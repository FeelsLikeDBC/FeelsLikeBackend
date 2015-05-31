class WeatherDayController < ApplicationController

  def feels_like
    @city = City.all
    @weather = @city.weather_days
    @date = []
    @avg_apparent_day_temp = []
    @avg_apparent_night_temp = []
    @high_apparent_temp = []
    @low_apparent_temp = []
    @weather.each do |day|
      @date << day.date
      @avg_apparent_day_temp << day.avg_apparent_day_temp
      @avg_apparent_night_temp << day.avg_apparent_night_temp
      @high_apparent_temp << day.high_apparent_temp
      @low_apparent_temp << day.low_apparent_temp
    end
    render json: {
      city: @city,
      date: @date,
      avg_apparent_day_temp: @avg_apparent_day_temp,
      avg_apparent_night_temp: @avg_apparent_night_temp,
      high_apparent_temp: @high_apparent_temp,
      low_apparent_temp: @low_apparent_temp
    }
  end


  # def temp_month
  #   @city = City.where(1) #CHANGE FOR PARAMS
  #   @month = WeatherDay.where(city_id: @city.id, month: 5) #CHANGE FOR PARAMS
  #   @average = []
  #   @high = []
  #   @low = []
  #   @month.each do |day|
  #     @average << day.avg_temp
  #     @high << day.high_temp
  #     @low << day.low_temp
  #   end
  #   render json: {average: @average, high: @high, low: @low}
  # end

  # def feels_like_month
  #   @city = City.find(1) #CHANGE FOR PARAMS
  #   @month = WeatherDay.where(city_id: @city.id, month: 5) #CHANGE FOR PARAMS
  #   @avg_feels_like_day = []
  #   @avg_night_array = []
  #   @high_array = []
  #   @low_array = []
  #   @month.each do |day|
  #     @avg_day_array << day.avg_apparent_day_temp
  #     @avg_night_array << day.avg_apparent_night_temp
  #     @high_array << day.high_apparent_temp
  #     @low_array << day.low_apparent_temp
  #   end
  #   @average_day = get_average(@avg_day_array)
  #   @average_night = get_average(@avg_night_array)
  #   @high = get_average(@high_array)
  #   @low = get_average(@low_array)
  #   render json: {average_day: @average_day, average_night: @average_night, high: @high, low: @low}
  # end

  # def rise_set_month
  #   @city = City.find(1) #CHANGE FOR PARAMS
  #   @month = WeatherDay.where(city_id: @city.id, month: 5) #CHANGE FOR PARAMS
  #   @sunrise_avg = []
  #   @sunset_avg = []
  #   @month.each do |day|
  #     @sunrise_avg << Time.at(day.sunrise).strftime('%I:%M')
  #     @sunset_avg << Time.at(day.sunset).strftime('%I:%M')
  #   end
  #   @sunrise = avg_times(@sunrise_avg)
  #   @sunset = avg_times(@sunset_avg)
  #   render json: {sunrise: @sunrise, sunset: @sunset}
  # end

  # def month_like
  #   # 2 cities
  #   # compare avg temp, avg feels_like, high low,
  #   # avg all temps into one score
  # end

  # def month_day_like
  #   # month
  #   # day
  #   # all 5 years and their month days, averaged
  # end

  # def year_month_day
  #   # weather on a specific day, month, and year in history
  # end

  # def spring
  #   # all of march, april, may temps and data
  # end

  # def summer
  #   # all of june, july, august temps and data
  # end

  # def autumn
  #   # all of september, october, november temps and data
  # end

  # def winter
  #   # all of december, january, february temps and data
  # end

  # private

  # def get_average(array)
  #   (array.reduce(:+)/array.length).round(2)
  # end

  # def avg_times(string_array)
  #   size = string_array.size
  #   avg_minutes = string_array.map do |string_time|
  #     hour, minute = string_time.split(':')
  #     hour.to_i * 60 + minute.to_i
  #   end.inject(:+)/size
  #   "#{((avg_minutes/60).to_s).rjust(2, '0')}:#{((avg_minutes%60).to_s).rjust(2, '0')}"
  # end

end