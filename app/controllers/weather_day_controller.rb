class WeatherDayController < ApplicationController

  def weather
    @city = City.find(params[:id])
    all_days = @city.weather_days.each.map do |day|
      day.date = Time.at(day.date).yday
      day
    end
    @days = Array.new(366) do |i|
      days_array = all_days.select do |day|
        day.date == i + 1
      end
      {
        yday: days_array[0].date,
        month: days_array[0].month,
        mday: days_array[0].day,
        sunrise: avg_times(days_array, :sunrise),
        sunset: avg_times(days_array, :sunset),
        cloud_cover: days_array.map { |day| day.cloud_cover }.reduce(:+)/days_array.length,
        avg_apparent_day_temp: days_array.map { |day| day.avg_apparent_day_temp }.reduce(:+)/days_array.length,
        avg_apparent_night_temp: days_array.map { |day| day.avg_apparent_night_temp }.reduce(:+)/days_array.length,
        high_apparent_temp: days_array.map { |day| day.high_apparent_temp }.reduce(:+)/days_array.length,
        low_apparent_temp: days_array.map { |day| day.low_apparent_temp }.reduce(:+)/days_array.length,
        rain: days_array.map { |day| day.rain },#.reduce(:+)/days_array.length,
        snow: days_array.map { |day| day.snow },#.reduce(:+)/days_array.length,
        avg_temp: days_array.map { |day| day.avg_temp }.reduce(:+)/days_array.length,
        high_temp: days_array.map { |day| day.high_temp }.reduce(:+)/days_array.length,
        low_temp: days_array.map { |day| day.low_temp }.reduce(:+)/days_array.length,
        avg_dewpt: days_array.map { |day| day.avg_dewpt }.reduce(:+)/days_array.length,
        avg_wind_spd: days_array.map { |day| day.avg_wind_spd }.reduce(:+)/days_array.length,
        avg_wind_dir: days_array.map { |day| day.avg_wind_dir }.reduce(:+)/days_array.length,
        humidity: days_array.map { |day| day.humidity }.reduce(:+)/days_array.length

      }
    end
    render json:
    {
      city: @city,
      data: @days
    }
  end


  private
  def sanitize_hour(hour_digit)
    if hour_digit <= 0
      hour_digit += 24
    else
      hour_digit
    end
  end

  def avg_of_times(array_of_time)
    size = array_of_time.length
    avg_minutes = array_of_time.map do |x|
      hour, minute = x.split(':')
      total_minutes = hour.to_i * 60 + minute.to_i
    end.reduce(:+)/size
    hour_var = sanitize_hour((avg_minutes/60) + (@city.offset.to_i)).to_s
    minute_var = (avg_minutes%60).to_s
    "#{hour_var.rjust(2, '0')}:#{minute_var.rjust(2, '0')}"
  end

  def avg_times(day_array, property)
    times = day_array.map(&property)
    avg_of_times(times.map { |time| Time.at(time).strftime('%H:%M')})
  end

end