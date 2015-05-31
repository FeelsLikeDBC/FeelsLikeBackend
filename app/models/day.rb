class Day < ActiveRecord::Base
  belongs_to :city
  has_many :weather_days
end