class WeatherDay < ActiveRecord::Base
  belongs_to :city
end


# City has many days. A day has many weather_days.
# A weather_day belongs to a day. A day belongs to a city.
# city.days
# day.weather_days

# weather_days.each do |w_day|
#   w_day.date