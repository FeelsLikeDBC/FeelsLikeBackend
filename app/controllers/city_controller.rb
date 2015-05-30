class CityController < ApplicationController

  def index
    @city = City.first
    @weather1 = WeatherDay.first
    render json: {city: @city, weather: @weather1}
  end
end
