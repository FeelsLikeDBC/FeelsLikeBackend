class CityController < ApplicationController

  def index
    @city = City.first
    render json: @city
  end
end
