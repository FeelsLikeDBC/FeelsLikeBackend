class CityController < ApplicationController

  def index
    @weather = WeatherDay.first
    render json: @weather
  end
end
