class CityController < ApplicationController

  def index
    @weather = WeatherDay.all
    render json: @weather
  end
end
