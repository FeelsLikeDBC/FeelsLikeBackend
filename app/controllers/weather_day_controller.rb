class WeatherDayController < ApplicationController

  def feels_like
    @city = City.find(params[:id])
    @weather = @city.weather_days.order(:date).map do |day|
      {
        city: day.city_id,
        date: day.date,
        year: day.year,
        month: day.month,
        day: day.day,
        avg_apparent_day_temp: day.avg_apparent_day_temp,
        avg_apparent_night_temp: day.avg_apparent_night_temp,
        high_apparent_temp: day.high_apparent_temp,
        low_apparent_temp: day.low_apparent_temp
      }
    end
    render json:
      {
        city: @city,
        weather: @weather
      }
  end

  def feels_like_monthly_crushed
    @city = City.find(params[:id])

    @jan_avg_day = []
    @jan_avg_night = []
    @jan_high = []
    @jan_low = []
    @feb_avg_day = []
    @feb_avg_night = []
    @feb_high = []
    @feb_low = []
    @mar_avg_day = []
    @mar_avg_night = []
    @mar_high = []
    @mar_low = []
    @apr_avg_day = []
    @apr_avg_night = []
    @apr_high = []
    @apr_low = []
    @may_avg_day = []
    @may_avg_night = []
    @may_high = []
    @may_low = []
    @jun_avg_day = []
    @jun_avg_night = []
    @jun_high = []
    @jun_low = []
    @jul_avg_day = []
    @jul_avg_night = []
    @jul_high = []
    @jul_low = []
    @aug_avg_day = []
    @aug_avg_night = []
    @aug_high = []
    @aug_low = []
    @sep_avg_day = []
    @sep_avg_night = []
    @sep_high = []
    @sep_low = []
    @oct_avg_day = []
    @oct_avg_night = []
    @oct_high = []
    @oct_low = []
    @nov_avg_day = []
    @nov_avg_night = []
    @nov_high = []
    @nov_low = []
    @dec_avg_day = []
    @dec_avg_night = []
    @dec_high = []
    @dec_low = []

    @city.weather_days.order(:date).each do |day|
      if day.month = 1
        @jan_avg_day << day.avg_apparent_day_temp
        @jan_avg_night << day.avg_apparent_night_temp
        @jan_high << day.high_apparent_temp
        @jan_low << day.low_apparent_temp
      elsif day.month = 2
        @feb_avg_day << day.avg_apparent_day_temp
        @feb_avg_night << day.avg_apparent_night_temp
        @feb_high << day.high_apparent_temp
        @feb_low << day.low_apparent_temp
      elsif day.month = 3
        @mar_avg_day << day.avg_apparent_day_temp
        @mar_avg_night << day.avg_apparent_night_temp
        @mar_high << day.high_apparent_temp
        @mar_low << day.low_apparent_temp
      elsif day.month = 4
        @apr_avg_day << day.avg_apparent_day_temp
        @apr_avg_night << day.avg_apparent_night_temp
        @apr_high << day.high_apparent_temp
        @apr_low << day.low_apparent_temp
      elsif day.month = 5
        @may_avg_day << day.avg_apparent_day_temp
        @may_avg_night << day.avg_apparent_night_temp
        @may_high << day.high_apparent_temp
        @may_low << day.low_apparent_temp
      elsif day.month = 6
        @jun_avg_day << day.avg_apparent_day_temp
        @jun_avg_night << day.avg_apparent_night_temp
        @jun_high << day.high_apparent_temp
        @jun_low << day.low_apparent_temp
      elsif day.month = 7
        @jul_avg_day << day.avg_apparent_day_temp
        @jul_avg_night << day.avg_apparent_night_temp
        @jul_high << day.high_apparent_temp
        @jul_low << day.low_apparent_temp
      elsif day.month = 8
        @aug_avg_day << day.avg_apparent_day_temp
        @aug_avg_night << day.avg_apparent_night_temp
        @aug_high << day.high_apparent_temp
        @aug_low << day.low_apparent_temp
      elsif day.month = 9
        @sep_avg_day << day.avg_apparent_day_temp
        @sep_avg_night << day.avg_apparent_night_temp
        @sep_high << day.high_apparent_temp
        @sep_low << day.low_apparent_temp
      elsif day.month = 10
        @oct_avg_day << day.avg_apparent_day_temp
        @oct_avg_night << day.avg_apparent_night_temp
        @oct_high << day.high_apparent_temp
        @oct_low << day.low_apparent_temp
      elsif day.month = 11
        @nov_avg_day << day.avg_apparent_day_temp
        @nov_avg_night << day.avg_apparent_night_temp
        @nov_high << day.high_apparent_temp
        @nov_low << day.low_apparent_temp
      elsif day.month = 12
        @dec_avg_day << day.avg_apparent_day_temp
        @dec_avg_night << day.avg_apparent_night_temp
        @dec_high << day.high_apparent_temp
        @dec_low << day.low_apparent_temp
      end
    end
    @jan_avg_day = @jan_avg_day.reduce(:+)/@jan_avg_day.length
    @jan_avg_night = @jan_avg_night.reduce(:+)/@jan_avg_night.length
    @jan_high = @jan_high.reduce(:+)/@jan_high.length
    # @jan_low = @jan_low.reduce(:+)/@jan_low.length
    # @feb_avg_day = @feb_avg_day.reduce(:+)/@feb_avg_day.length
    # @feb_avg_night = @feb_avg_night.reduce(:+)/@feb_avg_night.length
    # @feb_high = @feb_high.reduce(:+)/@feb_high.length
    # @feb_low = @feb_low.reduce(:+)/@feb_low.length
    # @mar_avg_day = @mar_avg_day.reduce(:+)/@mar_avg_day.length
    # @mar_avg_night = @mar_avg_night.reduce(:+)/@mar_avg_night.length
    # @mar_high = @mar_high.reduce(:+)/@mar_high.length
    # @mar_low = @mar_low.reduce(:+)/@mar_low.length
    # @apr_avg_day = @apr_avg_day.reduce(:+)/@apr_avg_day.length
    # @apr_avg_night = @apr_avg_night.reduce(:+)/@apr_avg_night.length
    # @apr_high = @apr_high.reduce(:+)/@apr_high.length
    # @apr_low = @apr_low.reduce(:+)/@apr_low.length
    # @may_avg_day = @may_avg_day.reduce(:+)/@may_avg_day.length
    # @may_avg_night = @may_avg_night.reduce(:+)/@may_avg_night.length
    # @may_high = @may_high.reduce(:+)/@may_high.length
    # @may_low = @may_low.reduce(:+)/@may_low.length
    # @jun_avg_day = @jun_avg_day.reduce(:+)/@jun_avg_day.length
    # @jun_avg_night = @jun_avg_night.reduce(:+)/@jun_avg_night.length
    # @jun_high = @jun_high.reduce(:+)/@jun_high.length
    # @jun_low = @jun_low.reduce(:+)/@jun_low.length
    # @jul_avg_day = @jul_avg_day.reduce(:+)/@jul_avg_day.length
    # @jul_avg_night = @jul_avg_night.reduce(:+)/@jul_avg_night.length
    # @jul_high = @jul_high.reduce(:+)/@jul_high.length
    # @jul_low = @jul_low.reduce(:+)/@jul_low.length
    # @aug_avg_day = @aug_avg_day.reduce(:+)/@aug_avg_day.length
    # @aug_avg_night = @aug_avg_night.reduce(:+)/@aug_avg_night.length
    # @aug_high = @aug_high.reduce(:+)/@aug_high.length
    # @aug_low = @aug_low.reduce(:+)/@aug_low.length
    # @sep_avg_day = @sep_avg_day.reduce(:+)/@sep_avg_day.length
    # @sep_avg_night = @sep_avg_night.reduce(:+)/@sep_avg_night.length
    # @sep_high = @sep_high.reduce(:+)/@sep_high.length
    # @sep_low = @sep_low.reduce(:+)/@sep_low.length
    # @oct_avg_day = @oct_avg_day.reduce(:+)/@oct_avg_day.length
    # @oct_avg_night = @oct_avg_night.reduce(:+)/@oct_avg_night.length
    # @oct_high = @oct_high.reduce(:+)/@oct_high.length
    # @oct_low = @oct_low.reduce(:+)/@oct_low.length
    # @nov_avg_day = @nov_avg_day.reduce(:+)/@nov_avg_day.length
    # @nov_avg_night = @nov_avg_night.reduce(:+)/@nov_avg_night.length
    # @nov_high = @nov_high.reduce(:+)/@nov_high.length
    # @nov_low = @nov_low.reduce(:+)/@nov_low.length
    # @dec_avg_day = @dec_avg_day.reduce(:+)/@dec_avg_day.length
    # @dec_avg_night = @dec_avg_night.reduce(:+)/@dec_avg_night.length
    # @dec_high = @dec_high.reduce(:+)/@dec_high.length
    # @dec_low = @dec_low.reduce(:+)/@dec_low.length

    render json:
    {
      january_avg_feels_like_day: @jan_avg_day,
      january_avg_feels_like_night: @jan_avg_night,
      january_feels_like_high: @jan_high
      # january_feels_like_low: @jan_low
      # february_avg_feels_like_day: @feb_avg_day,
      # february_avg_feels_like_night: @feb_avg_night,
      # february_feels_like_high: @feb_high,
      # february_feels_like_low: @feb_low,
      # march_avg_feels_like_day: @mar_avg_day,
      # march_avg_feels_like_night: @mar_avg_night,
      # march_feels_like_high: @mar_high,
      # march_feels_like_low: @mar_low,
      # april_avg_feels_like_day: @apr_avg_day,
      # april_avg_feels_like_night: @apr_avg_night,
      # april_feels_like_high: @apr_high,
      # april_feels_like_low: @apr_low,
      # may_avg_feels_like_day: @may_avg_day,
      # may_avg_feels_like_night: @may_avg_night,
      # may_feels_like_high: @may_high,
      # may_feels_like_low: @may_low,
      # june_avg_feels_like_day: @jun_avg_day,
      # june_avg_feels_like_night: @jun_avg_night,
      # june_feels_like_high: @jun_high,
      # june_feels_like_low: @jun_low,
      # july_avg_feels_like_day: @jul_avg_day,
      # july_avg_feels_like_night: @jul_avg_night,
      # july_feels_like_high: @jul_high,
      # july_feels_like_low: @jul_low,
      # august_avg_feels_like_day: @aug_avg_day,
      # august_avg_feels_like_night: @aug_avg_night,
      # august_feels_like_high: @aug_high,
      # august_feels_like_low: @aug_low,
      # september_avg_feels_like_day: @sep_avg_day,
      # september_avg_feels_like_night: @sep_avg_night,
      # september_feels_like_high: @sep_high,
      # september_feels_like_low: @sep_low,
      # october_avg_feels_like_day: @oct_avg_day,
      # october_avg_feels_like_night: @oct_avg_night,
      # october_feels_like_high: @oct_high,
      # october_feels_like_low: @oct_low,
      # november_avg_feels_like_day: @nov_avg_day,
      # november_avg_feels_like_night: @nov_avg_night,
      # november_feels_like_high: @nov_high,
      # november_feels_like_low: @nov_low,
      # december_avg_feels_like_day: @dec_avg_day,
      # december_avg_feels_like_night: @dec_avg_night,
      # december_feels_like_high: @dec_high,
      # december_feels_like_low: @dec_low
    }
  end


  def feels_like_monthly
    @city = City.find(params[:id])
    @weather = @city.weather_days.order(:date).map do |day|
      {
        city: day.city_id,
        date: day.date,
        year: day.year,
        month: day.month,
        day: day.day,
        avg_apparent_day_temp: day.avg_apparent_day_temp,
        avg_apparent_night_temp: day.avg_apparent_night_temp,
        high_apparent_temp: day.high_apparent_temp,
        low_apparent_temp: day.low_apparent_temp
      }
    end

    @weather = @weather.group_by do |weather_hash|
      weather_hash[:month]
    end
    render json:
      {
        city: @city,
        weather: @weather
      }
  end

  def feels_like_yearly
    @city = City.find(params[:id])
    @weather = @city.weather_days.order(:date).map do |day|
      {
        city: day.city_id,
        date: day.date,
        year: day.year,
        month: day.month,
        day: day.day,
        avg_apparent_day_temp: day.avg_apparent_day_temp,
        avg_apparent_night_temp: day.avg_apparent_night_temp,
        high_apparent_temp: day.high_apparent_temp,
        low_apparent_temp: day.low_apparent_temp
      }
    end

    @weather = @weather.group_by do |weather_hash|
      weather_hash[:year]
    end
    render json:
      {
        city: @city,
        weather: @weather
      }
  end

  def actual_temp
    @city = City.find(params[:id])
    @weather = @city.weather_days.order(:date).map do |day|
      {
        city: day.city_id,
        date: day.date,
        year: day.year,
        month: day.month,
        day: day.day,
        avg_temp: day.avg_temp,
        high_temp: day.high_temp,
        low_temp: day.low_temp
      }
    end
    render json:
      {
        city: @city,
        weather: @weather
      }
  end

  def actual_temp_monthly
    @city = City.find(params[:id])
    @weather = @city.weather_days.order(:date).map do |day|
      {
        city: day.city_id,
        date: day.date,
        year: day.year,
        month: day.month,
        day: day.day,
        avg_temp: day.avg_temp,
        high_temp: day.high_temp,
        low_temp: day.low_temp
      }
    end

    @weather = @weather.group_by do |weather_hash|
      weather_hash[:month]
    end
    render json:
      {
        city: @city,
        weather: @weather
      }
  end

  def actual_temp_yearly
    @city = City.find(params[:id])
    @weather = @city.weather_days.order(:date).map do |day|
      {
        city: day.city_id,
        date: day.date,
        year: day.year,
        month: day.month,
        day: day.day,
        avg_temp: day.avg_temp,
        high_temp: day.high_temp,
        low_temp: day.low_temp
      }
    end

    @weather = @weather.group_by do |weather_hash|
      weather_hash[:year]
    end
    render json:
      {
        city: @city,
        weather: @weather
      }
  end

  def rise_set
    @city = City.find(params[:id])
    @weather = @city.weather_days.order(:date).map do |day|
      {
        city: day.city_id,
        date: day.date,
        year: day.year,
        month: day.month,
        day: day.day,
        sunrise: day.sunrise,
        sunset: day.sunset,
        day_length: (day.sunset - day.sunrise),
        night_length: (86400 - (day.sunset - day.sunrise))
      }
    end
    render json:
      {
        city: @city,
        weather: @weather
      }
  end

  def rise_set_monthly
    @city = City.find(params[:id])
    @weather = @city.weather_days.order(:date).map do |day|
      {
        city: day.city_id,
        date: day.date,
        year: day.year,
        month: day.month,
        day: day.day,
        sunrise: day.sunrise,
        sunset: day.sunset,
        day_length: (day.sunset - day.sunrise),
        night_length: (86400 - (day.sunset - day.sunrise))
      }
    end

    @weather = @weather.group_by do |weather_hash|
      weather_hash[:month]
    end
    render json:
      {
        city: @city,
        weather: @weather
      }
  end

  def rise_set_yearly
    @city = City.find(params[:id])
    @weather = @city.weather_days.order(:date).map do |day|
      {
        city: day.city_id,
        date: day.date,
        year: day.year,
        month: day.month,
        day: day.day,
        sunrise: day.sunrise,
        sunset: day.sunset,
        day_length: (day.sunset - day.sunrise),
        night_length: (86400 - (day.sunset - day.sunrise))
      }
    end

    @weather = @weather.group_by do |weather_hash|
      weather_hash[:year]
    end
    render json:
      {
        city: @city,
        weather: @weather
      }
  end

  def rain_snow
    @city = City.find(params[:id])
    @weather = @city.weather_days.order(:date).map do |day|
      {
        city: day.city_id,
        date: day.date,
        year: day.year,
        month: day.month,
        day: day.day,
        rain: day.rain,
        precipitation: day.precipitation,
        snow: day.snow,
        snowfall: day.snowfall
      }
    end
    render json:
      {
        city: @city,
        weather: @weather
      }
  end

  def rain_snow_monthly
    @city = City.find(params[:id])
    @weather = @city.weather_days.order(:date).map do |day|
      {
        city: day.city_id,
        date: day.date,
        year: day.year,
        month: day.month,
        day: day.day,
        rain: day.rain,
        precipitation: day.precipitation,
        snow: day.snow,
        snowfall: day.snowfall
      }
    end

    @weather = @weather.group_by do |weather_hash|
      weather_hash[:month]
    end
    render json:
      {
        city: @city,
        weather: @weather
      }
  end

  def rain_snow_yearly
    @city = City.find(params[:id])
    @weather = @city.weather_days.order(:date).map do |day|
      {
        city: day.city_id,
        date: day.date,
        year: day.year,
        month: day.month,
        day: day.day,
        rain: day.rain,
        precipitation: day.precipitation,
        snow: day.snow,
        snowfall: day.snowfall
      }
    end

    @weather = @weather.group_by do |weather_hash|
      weather_hash[:year]
    end
    render json:
      {
        city: @city,
        weather: @weather
      }
  end

  def everything_else
    @city = City.find(params[:id])
    @weather = @city.weather_days.order(:date).map do |day|
      {
        city: day.city_id,
        date: day.date,
        year: day.year,
        month: day.month,
        day: day.day,
        summary: day.summary,
        cloud_cover: day.cloud_cover,
        avg_dewpt: day.avg_dewpt,
        avg_wind_spd: day.avg_wind_spd,
        avg_wind_dir: day.avg_wind_dir,
        humidity: day.humidity
      }
    end
    render json:
      {
        city: @city,
        weather: @weather
      }
  end

  def everything_else_monthly
    @city = City.find(params[:id])
    @weather = @city.weather_days.order(:date).map do |day|
      {
        city: day.city_id,
        date: day.date,
        year: day.year,
        month: day.month,
        day: day.day,
        summary: day.summary,
        cloud_cover: day.cloud_cover,
        avg_dewpt: day.avg_dewpt,
        avg_wind_spd: day.avg_wind_spd,
        avg_wind_dir: day.avg_wind_dir,
        humidity: day.humidity
      }
    end

    @weather = @weather.group_by do |weather_hash|
      weather_hash[:month]
    end
    render json:
      {
        city: @city,
        weather: @weather
      }
  end

  def everything_else_yearly
    @city = City.find(params[:id])
    @weather = @city.weather_days.order(:date).map do |day|
      {
        city: day.city_id,
        date: day.date,
        year: day.year,
        month: day.month,
        day: day.day,
        summary: day.summary,
        cloud_cover: day.cloud_cover,
        avg_dewpt: day.avg_dewpt,
        avg_wind_spd: day.avg_wind_spd,
        avg_wind_dir: day.avg_wind_dir,
        humidity: day.humidity
      }
    end

    @weather = @weather.group_by do |weather_hash|
      weather_hash[:year]
    end
    render json:
      {
        city: @city,
        weather: @weather
      }
  end

end