class CityController < ApplicationController

  def city
    @city = City.find(params[:id])
    @weather = @city.weather_days
    render json: {city: @city, weather: @weather}
  end

  # def richmond
  #   @city = City.where(nickname: 'RVA').first
  #   @weather = @city.weather_days
  #   render json: {city: @city, weather: @weather}
  # end

  # def chicago
  #   @city = City.where(nickname: 'CHI').first
  #   @weather = @city.weather_days
  #   render json: {city: @city, weather: @weather}
  # end

  # def ny
  #   @city = City.where(nickname: SF).first
  #   @weather = @city.weather_days
  #   render json: {city: @city, weather: @weather}
  # end

  # def kc
  #   @city = City.where(nickname: SF).first
  #   @weather = @city.weather_days
  #   render json: {city: @city, weather: @weather}
  # end

end
