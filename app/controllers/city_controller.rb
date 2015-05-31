class CityController < ApplicationController

  def sf
    @city = City.find(1)
    @weather = @city.weather_days
    render json: {city: @city, weather: @weather}
  end

  def richmond
    @city = City.find(2)
    @weather = @city.weather_days
    render json: {city: @city, weather: @weather}
  end


  def chicago
    @city = City.find(3)
    @weather = @city.weather_days
    render json: {city: @city, weather: @weather}
  end

  def ny
    @city = City.find(4)
    @weather = @city.weather_days
    render json: {city: @city, weather: @weather}
  end

  def kc
    @city = City.find(5)
    @weather = @city.weather_days
    render json: {city: @city, weather: @weather}
  end

end
