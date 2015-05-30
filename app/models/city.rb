class City < ActiveRecord::Base
  has_many :weather_days
end