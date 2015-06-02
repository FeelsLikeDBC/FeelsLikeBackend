class CityController < ApplicationController

  def index
    @cities = City.all
    render json: {cities: @cities}
  end

end
