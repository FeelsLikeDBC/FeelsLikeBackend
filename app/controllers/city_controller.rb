class CityController < ApplicationController

  def index
    @cities = City.all
    render json: {cities: @cities}
  end

  def show
    @city = City.find(params[:id])
    @weather = @city.weather_days.order(:date)
    render json: {city: @city, weather: @weather}
  end

  private

  def options_params(city, options)

  end

end
