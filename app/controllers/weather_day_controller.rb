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