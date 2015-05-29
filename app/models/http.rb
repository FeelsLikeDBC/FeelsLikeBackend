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

  include HTTP

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
      if CALLS % 999 == 0
        @@fk_key_num += 1
      end
      keys[@@fk_key_num]
    end

    def wu_key
      keys = [ ENV['WUAPI_KEY1'], ENV['WUAPI_KEY2'], ENV['WUAPI_KEY3'], ENV['WUAPI_KEY4'] ]
      if CALLS % 499 == 0
        @@wu_key_num += 1
      end
      keys[@@wu_key_num]
    end

    def wu_args(date,city)
      {
        api: wu_key,
        year: date.strftime('%Y'), # Year as string for WU
        month: date.strftime('%m'), # Month as string for WU
        day: date.strftime('%d'), # Day as string for WU
        state: city.state,
        city: city.name
      }
    end

    def fk_args(date,city)
      {
        api: fk_key,
        lat: city.lat.to_s,
        lng: city.lng.to_s,
        time: date.strftime('%s') # UNIX time for Forecast.io
      }
    end

    def make_forecast(wu,fk,city)
      apparent_temps = fk['hourly']['data'].map do |for_hash|
        for_hash['apparentTemperature'].to_i
      end
      avg_apparent_temp = apparent_temps.reduce(:+)/apparent_temps.length
      WeatherDay.create(
        city_id: city.id,
        date: fk['daily']['data'][0]['time'],
        summary: fk['daily']['data'][0]['summary'],
        sunrise: fk['daily']['data'][0]['sunriseTime'],
        sunset: fk['daily']['data'][0]['sunsetTime'],
        cloud_cover: fk['daily']['data'][0]['cloudCover'],
        rain: wu['history']['dailysummary'][0]['rain'],
        precipitation: wu['history']['dailysummary'][0]['precipi'],
        snow: wu['history']['dailysummary'][0]['snow'],
        snowfall: wu['history']['dailysummary'][0]['snowfalli'],
        avg_temp: wu['history']['dailysummary'][0]['meantempi'],
        high_temp: wu['history']['dailysummary'][0]['maxtempi'],
        low_temp: wu['history']['dailysummary'][0]['mintempi'],
        avg_dewpt: wu['history']['dailysummary'][0]['meandewpti'],
        avg_wind_spd: wu['history']['dailysummary'][0]['meanwindspdi'],
        avg_wind_dir: wu['history']['dailysummary'][0]['meanwdird'],
        humidity: wu['history']['dailysummary'][0]['humidity'],
        high_apparent_temp: fk['daily']['data'][0]['apparentTemperatureMax'],
        low_apparent_temp: fk['daily']['data'][0]['apparentTemperatureMin'],
        avg_apparent_temp: avg_apparent_temp.to_i
      )
    end

    def pull_city_data(city,date)

      message = "Done with #{city.name} forecast pull."

      return p message if date.day == 1 && date.month == 5 && date.year == 2015

      wu_res = WU.send_request(wu_args(city,date))
      fk_res = FK.send_request(fk_args(city,date))

      make_forecast(wu_res,fk_res,city)

      inc_calls # Increments the number of calls

      pull_city_data(city, date + 1)
    end

    def seed_city(city)
      pull_city_data(city, Date.new(2010,06,01))
    end

    def seed_cities(cities)
      cities.each do |city|
        seed_city(city) # Start at June 01 2010
      end
    end

  end
end

# DB_SEEDER.pull_city_data(City.first,Date.new(2015,04,01))


