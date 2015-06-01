module HTTP

  class FK

    class << self

      def query_string (api,lat,lng,time)
        "https://api.forecast.io/forecast/#{api}/#{lat},#{lng},#{time}"
      end

      def send_request(args)
        Unirest.get query_string(args[:api],args[:lat],args[:lng],args[:time])
      end

    end

  end

  class WU

    @@counter = 0

    class << self
      # date must be in the form of YYYY MM DD
      def query_string (api,year,month,day,state,city)
        "http://api.wunderground.com/api/#{api}/history_#{year}#{month}#{day}/q/#{state}/#{city}.json"
      end

      def send_request(args)
        @@counter += 1
        if @@counter % 10 == 0
          p "Waiting for a minute"
          sleep 60
          p "Restarting calls"
        end
        Unirest.get query_string(args[:api],args[:year],args[:month],args[:day],args[:state],args[:city])
      end
    end
  end

end

class DB_SEEDER

  @@calls = 0
  @@fk_key_num = 0
  @@wu_key_num = 0

  class << self

    def inc_calls
      if @@calls == 1999
        p "All done for today!"
        sleep(86400)
        @@fk_key_num = 0
        @@wu_key_num = 0
        @@calls = -1
        p "Beginning a new day of calls!"
      end
      @@calls += 1
    end

    def fk_key
      keys = [ ENV['FORECAST_KEY1'], ENV['FORECAST_KEY2'], ENV['FORECAST_KEY3'], ENV['FORECAST_KEY4'] ]
      if @@calls % 999 == 0
        @@fk_key_num += 1
      end
      keys[@@fk_key_num]
    end

    def wu_key
      keys = [ ENV['WUAPI_KEY1'], ENV['WUAPI_KEY2'], ENV['WUAPI_KEY3'], ENV['WUAPI_KEY4'] ]
      if @@calls % 499 == 0
        @@wu_key_num += 1
      end
      keys[@@wu_key_num]
    end

    def wu_args(date,city)
      {
        api: ENV['WUAPI_KEY1'],
        year: date.strftime('%Y'), # Year as string for WU
        month: date.strftime('%m'), # Month as string for WU
        day: date.strftime('%d'), # Day as string for WU
        state: city.state,
        city: city.name
      }
    end

    def fk_args(date,city)
      {
        api: ENV['FORECAST_KEY3'],
        lat: city.lat.to_s,
        lng: city.lng.to_s,
        time: date.strftime('%s').to_i # UNIX time for Forecast.io

        #1430377200 april 30 pst, midnight
        #1430280000 april 28 pst, 9pm
      }
    end

    def make_forecast(wu,fk,city)
      @apparent_day_temps = []
      @apparent_night_temps = []
      @sunrise = fk.body['daily']['data'][0]['sunriseTime'].to_i
      @sunset = fk.body['daily']['data'][0]['sunsetTime'].to_i
      fk.body['hourly']['data'].each do |hour|
        @time = hour['time'].to_i
        if @time > @sunrise && @time < @sunset
          @apparent_day_temps << hour['apparentTemperature'].to_f
        else
          @apparent_night_temps << hour['apparentTemperature'].to_f
        end
      end
      @year = Time.at(fk.body['daily']['data'][0]['time'].to_i).strftime('%Y').to_i
      @month = Time.at(fk.body['daily']['data'][0]['time'].to_i).strftime('%m').to_i
      @day = Time.at(fk.body['daily']['data'][0]['time'].to_i).strftime('%d').to_i
      avg_apparent_day_temp = @apparent_day_temps.reduce(:+)/@apparent_day_temps.length
      avg_apparent_night_temp = @apparent_night_temps.reduce(:+)/@apparent_night_temps.length
      WeatherDay.create(
        city_id: city.id,
        date: fk.body['daily']['data'][0]['time'],
        year: @year,
        month: @month,
        day: @day,
        summary: fk.body['daily']['data'][0]['summary'],
        sunrise: fk.body['daily']['data'][0]['sunriseTime'], #
        sunset: fk.body['daily']['data'][0]['sunsetTime'], #
        cloud_cover: fk.body['daily']['data'][0]['cloudCover'],
        rain: wu.body['history']['dailysummary'][0]['rain'],
        precipitation: wu.body['history']['dailysummary'][0]['precipi'],
        snow: wu.body['history']['dailysummary'][0]['snow'],
        snowfall: wu.body['history']['dailysummary'][0]['snowfalli'],
        avg_temp: wu.body['history']['dailysummary'][0]['meantempi'], #
        high_temp: wu.body['history']['dailysummary'][0]['maxtempi'], #
        low_temp: wu.body['history']['dailysummary'][0]['mintempi'], #
        avg_dewpt: wu.body['history']['dailysummary'][0]['meandewpti'],
        avg_wind_spd: wu.body['history']['dailysummary'][0]['meanwindspdi'],
        avg_wind_dir: wu.body['history']['dailysummary'][0]['meanwdird'],
        humidity: wu.body['history']['dailysummary'][0]['humidity'],
        high_apparent_temp: fk.body['daily']['data'][0]['apparentTemperatureMax'],
        low_apparent_temp: fk.body['daily']['data'][0]['apparentTemperatureMin'],
        avg_apparent_day_temp: avg_apparent_day_temp.to_f,
        avg_apparent_night_temp: avg_apparent_night_temp.to_f
      )
    end

    def pull_city_data(city,date)

      message = "Done with #{city.name} forecast pull."

      return p message if date.day == 1 && date.month == 5 && date.year == 2015

      wu_res = HTTP::WU.send_request(wu_args(date,city))
      fk_res = HTTP::FK.send_request(fk_args(date,city))

      make_forecast(wu_res,fk_res,city)

      # inc_calls # Increments the number of calls

      pull_city_data(city, date + 1)
    end

    def seed_city(city)
      pull_city_data(city, DateTime.new(2010,6,1,0,0,0, city.offset))
      # date = DateTime.new(2015,05,29,20,30,0, '-07:00')
    end

    def seed_cities(cities)
      cities.each do |city|
        seed_city(city) # Start at June 01 2010
      end
    end

  end
end

# DB_SEEDER.pull_city_data(City.fifth,DateTime.new(2010,5,1,0,0,0, City.fifth.offset))


