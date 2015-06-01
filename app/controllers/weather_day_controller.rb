class WeatherDayController < ApplicationController

  def feels_like
    @city = City.find(params[:id])
    @weather = @city.weather_days.order(:date).map do |day|
      {
        city: day.city_id,
        date: day.date,
        year: day.year,
        month: day.month,
        day: day.day,
        avg_apparent_day_temp: day.avg_apparent_day_temp,
        avg_apparent_night_temp: day.avg_apparent_night_temp,
        high_apparent_temp: day.high_apparent_temp,
        low_apparent_temp: day.low_apparent_temp
      }
    end
    render json:
      {
        city: @city,
        weather: @weather
      }
  end

  def feels_like_monthly_crushed
    @city = City.find(params[:id])

    @jan_avg_day = []
    @jan_avg_night = []
    @jan_high = []
    @jan_low = []
    @feb_avg_day = []
    @feb_avg_night = []
    @feb_high = []
    @feb_low = []
    @mar_avg_day = []
    @mar_avg_night = []
    @mar_high = []
    @mar_low = []
    @apr_avg_day = []
    @apr_avg_night = []
    @apr_high = []
    @apr_low = []
    @may_avg_day = []
    @may_avg_night = []
    @may_high = []
    @may_low = []
    @jun_avg_day = []
    @jun_avg_night = []
    @jun_high = []
    @jun_low = []
    @jul_avg_day = []
    @jul_avg_night = []
    @jul_high = []
    @jul_low = []
    @aug_avg_day = []
    @aug_avg_night = []
    @aug_high = []
    @aug_low = []
    @sep_avg_day = []
    @sep_avg_night = []
    @sep_high = []
    @sep_low = []
    @oct_avg_day = []
    @oct_avg_night = []
    @oct_high = []
    @oct_low = []
    @nov_avg_day = []
    @nov_avg_night = []
    @nov_high = []
    @nov_low = []
    @dec_avg_day = []
    @dec_avg_night = []
    @dec_high = []
    @dec_low = []

    @city.weather_days.order(:date).each do |day|
      if day.month == 1
        @jan_avg_day << day.avg_apparent_day_temp
        @jan_avg_night << day.avg_apparent_night_temp
        @jan_high << day.high_apparent_temp
        @jan_low << day.low_apparent_temp
      elsif day.month == 2
        @feb_avg_day << day.avg_apparent_day_temp
        @feb_avg_night << day.avg_apparent_night_temp
        @feb_high << day.high_apparent_temp
        @feb_low << day.low_apparent_temp
      elsif day.month == 3
        @mar_avg_day << day.avg_apparent_day_temp
        @mar_avg_night << day.avg_apparent_night_temp
        @mar_high << day.high_apparent_temp
        @mar_low << day.low_apparent_temp
      elsif day.month == 4
        @apr_avg_day << day.avg_apparent_day_temp
        @apr_avg_night << day.avg_apparent_night_temp
        @apr_high << day.high_apparent_temp
        @apr_low << day.low_apparent_temp
      elsif day.month == 5
        @may_avg_day << day.avg_apparent_day_temp
        @may_avg_night << day.avg_apparent_night_temp
        @may_high << day.high_apparent_temp
        @may_low << day.low_apparent_temp
      elsif day.month == 6
        @jun_avg_day << day.avg_apparent_day_temp
        @jun_avg_night << day.avg_apparent_night_temp
        @jun_high << day.high_apparent_temp
        @jun_low << day.low_apparent_temp
      elsif day.month == 7
        @jul_avg_day << day.avg_apparent_day_temp
        @jul_avg_night << day.avg_apparent_night_temp
        @jul_high << day.high_apparent_temp
        @jul_low << day.low_apparent_temp
      elsif day.month == 8
        @aug_avg_day << day.avg_apparent_day_temp
        @aug_avg_night << day.avg_apparent_night_temp
        @aug_high << day.high_apparent_temp
        @aug_low << day.low_apparent_temp
      elsif day.month == 9
        @sep_avg_day << day.avg_apparent_day_temp
        @sep_avg_night << day.avg_apparent_night_temp
        @sep_high << day.high_apparent_temp
        @sep_low << day.low_apparent_temp
      elsif day.month == 10
        @oct_avg_day << day.avg_apparent_day_temp
        @oct_avg_night << day.avg_apparent_night_temp
        @oct_high << day.high_apparent_temp
        @oct_low << day.low_apparent_temp
      elsif day.month == 11
        @nov_avg_day << day.avg_apparent_day_temp
        @nov_avg_night << day.avg_apparent_night_temp
        @nov_high << day.high_apparent_temp
        @nov_low << day.low_apparent_temp
      elsif day.month == 12
        @dec_avg_day << day.avg_apparent_day_temp
        @dec_avg_night << day.avg_apparent_night_temp
        @dec_high << day.high_apparent_temp
        @dec_low << day.low_apparent_temp
      end
    end

    @monthly_average_feels_like_day =
    [
      (@jan_avg_day.reduce(:+)/@jan_avg_day.length).round(2),
      (@feb_avg_day.reduce(:+)/@feb_avg_day.length).round(2),
      (@mar_avg_day.reduce(:+)/@mar_avg_day.length).round(2),
      (@apr_avg_day.reduce(:+)/@apr_avg_day.length).round(2),
      (@may_avg_day.reduce(:+)/@may_avg_day.length).round(2),
      (@jun_avg_day.reduce(:+)/@jun_avg_day.length).round(2),
      (@jul_avg_day.reduce(:+)/@jul_avg_day.length).round(2),
      (@aug_avg_day.reduce(:+)/@aug_avg_day.length).round(2),
      (@sep_avg_day.reduce(:+)/@sep_avg_day.length).round(2),
      (@oct_avg_day.reduce(:+)/@oct_avg_day.length).round(2),
      (@nov_avg_day.reduce(:+)/@nov_avg_day.length).round(2),
      (@dec_avg_day.reduce(:+)/@dec_avg_day.length).round(2)
    ]

    @monthly_average_feels_like_night =
    [
      (@jan_avg_night.reduce(:+)/@jan_avg_night.length).round(2),
      (@feb_avg_night.reduce(:+)/@feb_avg_night.length).round(2),
      (@mar_avg_night.reduce(:+)/@mar_avg_night.length).round(2),
      (@apr_avg_night.reduce(:+)/@apr_avg_night.length).round(2),
      (@may_avg_night.reduce(:+)/@may_avg_night.length).round(2),
      (@jun_avg_night.reduce(:+)/@jun_avg_night.length).round(2),
      (@jul_avg_night.reduce(:+)/@jul_avg_night.length).round(2),
      (@aug_avg_night.reduce(:+)/@aug_avg_night.length).round(2),
      (@sep_avg_night.reduce(:+)/@sep_avg_night.length).round(2),
      (@oct_avg_night.reduce(:+)/@oct_avg_night.length).round(2),
      (@nov_avg_night.reduce(:+)/@nov_avg_night.length).round(2),
      (@dec_avg_night.reduce(:+)/@dec_avg_night.length).round(2)
    ]

    @monthly_feels_like_high =
    [
      (@jan_high.reduce(:+)/@jan_high.length).round(2),
      (@feb_high.reduce(:+)/@feb_high.length).round(2),
      (@mar_high.reduce(:+)/@mar_high.length).round(2),
      (@apr_high.reduce(:+)/@apr_high.length).round(2),
      (@may_high.reduce(:+)/@may_high.length).round(2),
      (@jun_high.reduce(:+)/@jun_high.length).round(2),
      (@jul_high.reduce(:+)/@jul_high.length).round(2),
      (@aug_high.reduce(:+)/@aug_high.length).round(2),
      (@sep_high.reduce(:+)/@sep_high.length).round(2),
      (@oct_high.reduce(:+)/@oct_high.length).round(2),
      (@nov_high.reduce(:+)/@nov_high.length).round(2),
      (@dec_high.reduce(:+)/@dec_high.length).round(2)
    ]

    @monthly_feels_like_low =
    [
      (@jan_low.reduce(:+)/@jan_low.length).round(2),
      (@feb_low.reduce(:+)/@feb_low.length).round(2),
      (@mar_low.reduce(:+)/@mar_low.length).round(2),
      (@apr_low.reduce(:+)/@apr_low.length).round(2),
      (@may_low.reduce(:+)/@may_low.length).round(2),
      (@jun_low.reduce(:+)/@jun_low.length).round(2),
      (@jul_low.reduce(:+)/@jul_low.length).round(2),
      (@aug_low.reduce(:+)/@aug_low.length).round(2),
      (@sep_low.reduce(:+)/@sep_low.length).round(2),
      (@oct_low.reduce(:+)/@oct_low.length).round(2),
      (@nov_low.reduce(:+)/@nov_low.length).round(2),
      (@dec_low.reduce(:+)/@dec_low.length).round(2)
    ]

    render json:
    {
      monthly_average_feels_like_day: @monthly_average_feels_like_day,
      monthly_average_feels_like_night: @monthly_average_feels_like_night,
      monthly_feels_like_high: @monthly_feels_like_high,
      monthly_feels_like_low: @monthly_feels_like_low
    }
  end

  def feels_like_monthly
    @city = City.find(params[:id])
    @weather = @city.weather_days.order(:date).map do |day|
      {
        city: day.city_id,
        date: day.date,
        year: day.year,
        month: day.month,
        day: day.day,
        avg_apparent_day_temp: day.avg_apparent_day_temp,
        avg_apparent_night_temp: day.avg_apparent_night_temp,
        high_apparent_temp: day.high_apparent_temp,
        low_apparent_temp: day.low_apparent_temp
      }
    end

    @weather = @weather.group_by do |weather_hash|
      weather_hash[:month]
    end
    render json:
      {
        city: @city,
        weather: @weather
      }
  end

  def feels_like_yearly_crushed
    @city = City.find(params[:id])

    @_2010_avg_day = []
    @_2010_avg_night = []
    @_2010_high = []
    @_2010_low = []
    @_2011_avg_day = []
    @_2011_avg_night = []
    @_2011_high = []
    @_2011_low = []
    @_2012_avg_day = []
    @_2012_avg_night = []
    @_2012_high = []
    @_2012_low = []
    @_2013_avg_day = []
    @_2013_avg_night = []
    @_2013_high = []
    @_2013_low = []
    @_2014_avg_day = []
    @_2014_avg_night = []
    @_2014_high = []
    @_2014_low = []
    @_2015_avg_day = []
    @_2015_avg_night = []
    @_2015_high = []
    @_2015_low = []

    @city.weather_days.order(:date).each do |day|
      if day.year == 2010
        @_2010_avg_day << day.avg_apparent_day_temp
        @_2010_avg_night << day.avg_apparent_night_temp
        @_2010_high << day.high_apparent_temp
        @_2010_low << day.low_apparent_temp
      elsif day.year == 2011
        @_2011_avg_day << day.avg_apparent_day_temp
        @_2011_avg_night << day.avg_apparent_night_temp
        @_2011_high << day.high_apparent_temp
        @_2011_low << day.low_apparent_temp
      elsif day.year == 2012
        @_2012_avg_day << day.avg_apparent_day_temp
        @_2012_avg_night << day.avg_apparent_night_temp
        @_2012_high << day.high_apparent_temp
        @_2012_low << day.low_apparent_temp
      elsif day.year == 2013
        @_2013_avg_day << day.avg_apparent_day_temp
        @_2013_avg_night << day.avg_apparent_night_temp
        @_2013_high << day.high_apparent_temp
        @_2013_low << day.low_apparent_temp
      elsif day.year == 2014
        @_2014_avg_day << day.avg_apparent_day_temp
        @_2014_avg_night << day.avg_apparent_night_temp
        @_2014_high << day.high_apparent_temp
        @_2014_low << day.low_apparent_temp
      elsif day.year == 2015
        @_2015_avg_day << day.avg_apparent_day_temp
        @_2015_avg_night << day.avg_apparent_night_temp
        @_2015_high << day.high_apparent_temp
        @_2015_low << day.low_apparent_temp
      end
    end
    @yearly_average_feels_like_day =
    [
      (@_2010_avg_day.reduce(:+)/@_2010_avg_day.length).round(2),
      (@_2011_avg_day.reduce(:+)/@_2011_avg_day.length).round(2),
      (@_2012_avg_day.reduce(:+)/@_2012_avg_day.length).round(2),
      (@_2013_avg_day.reduce(:+)/@_2013_avg_day.length).round(2),
      (@_2014_avg_day.reduce(:+)/@_2014_avg_day.length).round(2),
      (@_2015_avg_day.reduce(:+)/@_2015_avg_day.length).round(2)
    ]

    @yearly_average_feels_like_night =
    [
      (@_2010_avg_night.reduce(:+)/@_2010_avg_night.length).round(2),
      (@_2011_avg_night.reduce(:+)/@_2011_avg_night.length).round(2),
      (@_2012_avg_night.reduce(:+)/@_2012_avg_night.length).round(2),
      (@_2013_avg_night.reduce(:+)/@_2013_avg_night.length).round(2),
      (@_2014_avg_night.reduce(:+)/@_2014_avg_night.length).round(2),
      (@_2015_avg_night.reduce(:+)/@_2015_avg_night.length).round(2)
    ]
    @yearly_feels_like_high =
    [
      (@_2010_high.reduce(:+)/@_2010_high.length).round(2),
      (@_2011_high.reduce(:+)/@_2011_high.length).round(2),
      (@_2012_high.reduce(:+)/@_2012_high.length).round(2),
      (@_2013_high.reduce(:+)/@_2013_high.length).round(2),
      (@_2014_high.reduce(:+)/@_2014_high.length).round(2),
      (@_2015_high.reduce(:+)/@_2015_high.length).round(2)
    ]
    @yearly_feels_like_low =
    [
      (@_2010_low.reduce(:+)/@_2010_low.length).round(2),
      (@_2011_low.reduce(:+)/@_2011_low.length).round(2),
      (@_2012_low.reduce(:+)/@_2012_low.length).round(2),
      (@_2013_low.reduce(:+)/@_2013_low.length).round(2),
      (@_2014_low.reduce(:+)/@_2014_low.length).round(2),
      (@_2015_low.reduce(:+)/@_2015_low.length).round(2)
    ]

    render json:
    {
      yearly_average_feels_like_day: @yearly_average_feels_like_day,
      yearly_average_feels_like_night: @yearly_average_feels_like_night,
      yearly_feels_like_high: @yearly_feels_like_high,
      yearly_feels_like_low: @yearly_feels_like_low
    }
  end

  def feels_like_yearly
    @city = City.find(params[:id])
    @weather = @city.weather_days.order(:date).map do |day|
      {
        city: day.city_id,
        date: day.date,
        year: day.year,
        month: day.month,
        day: day.day,
        avg_apparent_day_temp: day.avg_apparent_day_temp,
        avg_apparent_night_temp: day.avg_apparent_night_temp,
        high_apparent_temp: day.high_apparent_temp,
        low_apparent_temp: day.low_apparent_temp
      }
    end

    @weather = @weather.group_by do |weather_hash|
      weather_hash[:year]
    end
    render json:
      {
        city: @city,
        weather: @weather
      }
  end

  def actual_temp
    @city = City.find(params[:id])
    @weather = @city.weather_days.order(:date).map do |day|
      {
        city: day.city_id,
        date: day.date,
        year: day.year,
        month: day.month,
        day: day.day,
        avg_temp: day.avg_temp,
        high_temp: day.high_temp,
        low_temp: day.low_temp
      }
    end
    render json:
      {
        city: @city,
        weather: @weather
      }
  end

  def actual_temp_monthly
    @city = City.find(params[:id])
    @weather = @city.weather_days.order(:date).map do |day|
      {
        city: day.city_id,
        date: day.date,
        year: day.year,
        month: day.month,
        day: day.day,
        avg_temp: day.avg_temp,
        high_temp: day.high_temp,
        low_temp: day.low_temp
      }
    end

    @weather = @weather.group_by do |weather_hash|
      weather_hash[:month]
    end
    render json:
      {
        city: @city,
        weather: @weather
      }
  end

  def actual_yearly_crushed
    @city = City.find(params[:id])

    @_2010_avg = []
    @_2010_high = []
    @_2010_low = []
    @_2011_avg = []
    @_2011_high = []
    @_2011_low = []
    @_2012_avg = []
    @_2012_high = []
    @_2012_low = []
    @_2013_avg = []
    @_2013_high = []
    @_2013_low = []
    @_2014_avg = []
    @_2014_high = []
    @_2014_low = []
    @_2015_avg = []
    @_2015_high = []
    @_2015_low = []

    @city.weather_days.order(:date).each do |day|
      if day.year == 2010
        @_2010_avg << day.avg_temp
        @_2010_high << day.high_temp
        @_2010_low << day.low_temp
      elsif day.year == 2011
        @_2011_avg << day.avg_temp
        @_2011_high << day.high_temp
        @_2011_low << day.low_temp
      elsif day.year == 2012
        @_2012_avg << day.avg_temp
        @_2012_high << day.high_temp
        @_2012_low << day.low_temp
      elsif day.year == 2013
        @_2013_avg << day.avg_temp
        @_2013_high << day.high_temp
        @_2013_low << day.low_temp
      elsif day.year == 2014
        @_2014_avg << day.avg_temp
        @_2014_high << day.high_temp
        @_2014_low << day.low_temp
      elsif day.year == 2015
        @_2015_avg << day.avg_temp
        @_2015_high << day.high_temp
        @_2015_low << day.low_temp
      end
    end
    @yearly_average =
    [
      (@_2010_avg.reduce(:+)/@_2010_avg.length).round(2),
      (@_2011_avg.reduce(:+)/@_2011_avg.length).round(2),
      (@_2012_avg.reduce(:+)/@_2012_avg.length).round(2),
      (@_2013_avg.reduce(:+)/@_2013_avg.length).round(2),
      (@_2014_avg.reduce(:+)/@_2014_avg.length).round(2),
      (@_2015_avg.reduce(:+)/@_2015_avg.length).round(2)
    ]

    @yearly_high =
    [
      (@_2010_high.reduce(:+)/@_2010_high.length).round(2),
      (@_2011_high.reduce(:+)/@_2011_high.length).round(2),
      (@_2012_high.reduce(:+)/@_2012_high.length).round(2),
      (@_2013_high.reduce(:+)/@_2013_high.length).round(2),
      (@_2014_high.reduce(:+)/@_2014_high.length).round(2),
      (@_2015_high.reduce(:+)/@_2015_high.length).round(2)
    ]
    @yearly_low =
    [
      (@_2010_low.reduce(:+)/@_2010_low.length).round(2),
      (@_2011_low.reduce(:+)/@_2011_low.length).round(2),
      (@_2012_low.reduce(:+)/@_2012_low.length).round(2),
      (@_2013_low.reduce(:+)/@_2013_low.length).round(2),
      (@_2014_low.reduce(:+)/@_2014_low.length).round(2),
      (@_2015_low.reduce(:+)/@_2015_low.length).round(2)
    ]

    render json:
    {
      yearly_average: @yearly_average,
      yearly_high: @yearly_high,
      yearly_low: @yearly_low
    }
  end

  def actual_temp_yearly
    @city = City.find(params[:id])
    @weather = @city.weather_days.order(:date).map do |day|
      {
        city: day.city_id,
        date: day.date,
        year: day.year,
        month: day.month,
        day: day.day,
        avg_temp: day.avg_temp,
        high_temp: day.high_temp,
        low_temp: day.low_temp
      }
    end

    @weather = @weather.group_by do |weather_hash|
      weather_hash[:year]
    end
    render json:
      {
        city: @city,
        weather: @weather
      }
  end

  def rise_set
    @city = City.find(params[:id])
    @weather = @city.weather_days.order(:date).map do |day|
      {
        city: day.city_id,
        date: day.date,
        year: day.year,
        month: day.month,
        day: day.day,
        sunrise: day.sunrise,
        sunset: day.sunset,
        day_length: (day.sunset - day.sunrise),
        night_length: (86400 - (day.sunset - day.sunrise))
      }
    end
    render json:
      {
        city: @city,
        weather: @weather
      }
  end

  def rise_set_monthly_crushed
    @city = City.find(params[:id])

    @jan_sunrise = []
    @jan_sunset = []
    @jan_daylight = []
    @jan_darkness = []
    @feb_sunrise = []
    @feb_sunset = []
    @feb_daylight = []
    @feb_darkness = []
    @mar_sunrise = []
    @mar_sunset = []
    @mar_daylight = []
    @mar_darkness = []
    @apr_sunrise = []
    @apr_sunset = []
    @apr_daylight = []
    @apr_darkness = []
    @may_sunrise = []
    @may_sunset = []
    @may_daylight = []
    @may_darkness = []
    @jun_sunrise = []
    @jun_sunset = []
    @jun_daylight = []
    @jun_darkness = []
    @jul_sunrise = []
    @jul_sunset = []
    @jul_daylight = []
    @jul_darkness = []
    @aug_sunrise = []
    @aug_sunset = []
    @aug_daylight = []
    @aug_darkness = []
    @sep_sunrise = []
    @sep_sunset = []
    @sep_daylight = []
    @sep_darkness = []
    @oct_sunrise = []
    @oct_sunset = []
    @oct_daylight = []
    @oct_darkness = []
    @nov_sunrise = []
    @nov_sunset = []
    @nov_daylight = []
    @nov_darkness = []
    @dec_sunrise = []
    @dec_sunset = []
    @dec_daylight = []
    @dec_darkness = []

    @weather = @city.weather_days.order(:date).each do |day|
      if day.month == 1
        @jan_sunrise << Time.at(day.sunrise).strftime('%H:%M')
        @jan_sunset << Time.at(day.sunset).strftime('%H:%M')
        @jan_daylight << (day.sunset - day.sunrise)
        @jan_darkness << (86400 - (day.sunset - day.sunrise))
      elsif day.month == 2
        @feb_sunrise << Time.at(day.sunrise).strftime('%H:%M')
        @feb_sunset << Time.at(day.sunset).strftime('%H:%M')
        @feb_daylight << (day.sunset - day.sunrise)
        @feb_darkness << (86400 - (day.sunset - day.sunrise))
      elsif day.month == 3
        @mar_sunrise << Time.at(day.sunrise).strftime('%H:%M')
        @mar_sunset << Time.at(day.sunset).strftime('%H:%M')
        @mar_daylight << (day.sunset - day.sunrise)
        @mar_darkness << (86400 - (day.sunset - day.sunrise))
      elsif day.month == 4
        @apr_sunrise << Time.at(day.sunrise).strftime('%H:%M')
        @apr_sunset << Time.at(day.sunset).strftime('%H:%M')
        @apr_daylight << (day.sunset - day.sunrise)
        @apr_darkness << (86400 - (day.sunset - day.sunrise))
      elsif day.month == 5
        @may_sunrise << Time.at(day.sunrise).strftime('%H:%M')
        @may_sunset << Time.at(day.sunset).strftime('%H:%M')
        @may_daylight << (day.sunset - day.sunrise)
        @may_darkness << (86400 - (day.sunset - day.sunrise))
      elsif day.month == 6
        @jun_sunrise << Time.at(day.sunrise).strftime('%H:%M')
        @jun_sunset << Time.at(day.sunset).strftime('%H:%M')
        @jun_daylight << (day.sunset - day.sunrise)
        @jun_darkness << (86400 - (day.sunset - day.sunrise))
      elsif day.month == 7
        @jul_sunrise << Time.at(day.sunrise).strftime('%H:%M')
        @jul_sunset << Time.at(day.sunset).strftime('%H:%M')
        @jul_daylight << (day.sunset - day.sunrise)
        @jul_darkness << (86400 - (day.sunset - day.sunrise))
      elsif day.month == 8
        @aug_sunrise << Time.at(day.sunrise).strftime('%H:%M')
        @aug_sunset << Time.at(day.sunset).strftime('%H:%M')
        @aug_daylight << (day.sunset - day.sunrise)
        @aug_darkness << (86400 - (day.sunset - day.sunrise))
      elsif day.month == 9
        @sep_sunrise << Time.at(day.sunrise).strftime('%H:%M')
        @sep_sunset << Time.at(day.sunset).strftime('%H:%M')
        @sep_daylight << (day.sunset - day.sunrise)
        @sep_darkness << (86400 - (day.sunset - day.sunrise))
      elsif day.month == 10
        @oct_sunrise << Time.at(day.sunrise).strftime('%H:%M')
        @oct_sunset << Time.at(day.sunset).strftime('%H:%M')
        @oct_daylight << (day.sunset - day.sunrise)
        @oct_darkness << (86400 - (day.sunset - day.sunrise))
      elsif day.month == 11
        @nov_sunrise << Time.at(day.sunrise).strftime('%H:%M')
        @nov_sunset << Time.at(day.sunset).strftime('%H:%M')
        @nov_daylight << (day.sunset - day.sunrise)
        @nov_darkness << (86400 - (day.sunset - day.sunrise))
      elsif day.month == 12
        @dec_sunrise << Time.at(day.sunrise).strftime('%H:%M')
        @dec_sunset << Time.at(day.sunset).strftime('%H:%M')
        @dec_daylight << (day.sunset - day.sunrise)
        @dec_darkness << (86400 - (day.sunset - day.sunrise))
      end
    end

    @monthly_sunrise =
    [
      avg_of_times(@jan_sunrise),
      avg_of_times(@feb_sunrise),
      avg_of_times(@mar_sunrise),
      avg_of_times(@apr_sunrise),
      avg_of_times(@may_sunrise),
      avg_of_times(@jun_sunrise),
      avg_of_times(@jul_sunrise),
      avg_of_times(@aug_sunrise),
      avg_of_times(@sep_sunrise),
      avg_of_times(@oct_sunrise),
      avg_of_times(@nov_sunrise),
      avg_of_times(@dec_sunrise)
    ]
    @monthly_sunset =
    [
      avg_of_times(@jan_sunset),
      avg_of_times(@feb_sunset),
      avg_of_times(@mar_sunset),
      avg_of_times(@apr_sunset),
      avg_of_times(@may_sunset),
      avg_of_times(@jun_sunset),
      avg_of_times(@jul_sunset),
      avg_of_times(@aug_sunset),
      avg_of_times(@sep_sunset),
      avg_of_times(@oct_sunset),
      avg_of_times(@nov_sunset),
      avg_of_times(@dec_sunset)
    ]
    @monthly_daylight =
    [
      (@jan_daylight.reduce(:+)/@jan_daylight.length).fdiv(3600).round(2),
      (@feb_daylight.reduce(:+)/@feb_daylight.length).fdiv(3600).round(2),
      (@mar_daylight.reduce(:+)/@mar_daylight.length).fdiv(3600).round(2),
      (@apr_daylight.reduce(:+)/@apr_daylight.length).fdiv(3600).round(2),
      (@may_daylight.reduce(:+)/@may_daylight.length).fdiv(3600).round(2),
      (@jun_daylight.reduce(:+)/@jun_daylight.length).fdiv(3600).round(2),
      (@jul_daylight.reduce(:+)/@jul_daylight.length).fdiv(3600).round(2),
      (@aug_daylight.reduce(:+)/@aug_daylight.length).fdiv(3600).round(2),
      (@sep_daylight.reduce(:+)/@sep_daylight.length).fdiv(3600).round(2),
      (@oct_daylight.reduce(:+)/@oct_daylight.length).fdiv(3600).round(2),
      (@nov_daylight.reduce(:+)/@nov_daylight.length).fdiv(3600).round(2),
      (@dec_daylight.reduce(:+)/@dec_daylight.length).fdiv(3600).round(2)
    ]
    @monthly_darkness =
    [
      (@jan_darkness.reduce(:+)/@jan_darkness.length).fdiv(3600).round(2),
      (@feb_darkness.reduce(:+)/@feb_darkness.length).fdiv(3600).round(2),
      (@mar_darkness.reduce(:+)/@mar_darkness.length).fdiv(3600).round(2),
      (@apr_darkness.reduce(:+)/@apr_darkness.length).fdiv(3600).round(2),
      (@may_darkness.reduce(:+)/@may_darkness.length).fdiv(3600).round(2),
      (@jun_darkness.reduce(:+)/@jun_darkness.length).fdiv(3600).round(2),
      (@jul_darkness.reduce(:+)/@jul_darkness.length).fdiv(3600).round(2),
      (@aug_darkness.reduce(:+)/@aug_darkness.length).fdiv(3600).round(2),
      (@sep_darkness.reduce(:+)/@sep_darkness.length).fdiv(3600).round(2),
      (@oct_darkness.reduce(:+)/@oct_darkness.length).fdiv(3600).round(2),
      (@nov_darkness.reduce(:+)/@nov_darkness.length).fdiv(3600).round(2),
      (@dec_darkness.reduce(:+)/@dec_darkness.length).fdiv(3600).round(2)
    ]

    render json:
    {
      monthly_sunrise: @monthly_sunrise,
      monthly_sunset: @monthly_sunset,
      monthly_daylight_hours: @monthly_daylight,
      monthly_darkness_hours: @monthly_darkness
    }

  end


  def rise_set_monthly
    @city = City.find(params[:id])
    @weather = @city.weather_days.order(:date).map do |day|
      {
        sunrise: day.sunrise,
        sunset: day.sunset,
        day_length: (day.sunset - day.sunrise),
        night_length: (86400 - (day.sunset - day.sunrise))
      }
    end
    @weather = @weather.group_by do |weather_hash|
      weather_hash[:month]
    end
    render json:
      {
        city: @city,
        weather: @weather
      }
  end

  def rise_set_yearly
    @city = City.find(params[:id])
    @weather = @city.weather_days.order(:date).map do |day|
      {
        city: day.city_id,
        date: day.date,
        year: day.year,
        month: day.month,
        day: day.day,
        sunrise: day.sunrise,
        sunset: day.sunset,
        day_length: (day.sunset - day.sunrise),
        night_length: (86400 - (day.sunset - day.sunrise))
      }
    end

    @weather = @weather.group_by do |weather_hash|
      weather_hash[:year]
    end
    render json:
      {
        city: @city,
        weather: @weather
      }
  end

  def rain_snow
    @city = City.find(params[:id])
    @weather = @city.weather_days.order(:date).map do |day|
      {
        city: day.city_id,
        date: day.date,
        year: day.year,
        month: day.month,
        day: day.day,
        rain: day.rain,
        precipitation: day.precipitation,
        snow: day.snow,
        snowfall: day.snowfall
      }
    end
    render json:
      {
        city: @city,
        weather: @weather
      }
  end

  def rain_snow_monthly
    @city = City.find(params[:id])
    @weather = @city.weather_days.order(:date).map do |day|
      {
        city: day.city_id,
        date: day.date,
        year: day.year,
        month: day.month,
        day: day.day,
        rain: day.rain,
        precipitation: day.precipitation,
        snow: day.snow,
        snowfall: day.snowfall
      }
    end

    @weather = @weather.group_by do |weather_hash|
      weather_hash[:month]
    end
    render json:
      {
        city: @city,
        weather: @weather
      }
  end

  def rain_snow_yearly
    @city = City.find(params[:id])
    @weather = @city.weather_days.order(:date).map do |day|
      {
        city: day.city_id,
        date: day.date,
        year: day.year,
        month: day.month,
        day: day.day,
        rain: day.rain,
        precipitation: day.precipitation,
        snow: day.snow,
        snowfall: day.snowfall
      }
    end

    @weather = @weather.group_by do |weather_hash|
      weather_hash[:year]
    end
    render json:
      {
        city: @city,
        weather: @weather
      }
  end

  def everything_else
    @city = City.find(params[:id])
    @weather = @city.weather_days.order(:date).map do |day|
      {
        city: day.city_id,
        date: day.date,
        year: day.year,
        month: day.month,
        day: day.day,
        summary: day.summary,
        cloud_cover: day.cloud_cover,
        avg_dewpt: day.avg_dewpt,
        avg_wind_spd: day.avg_wind_spd,
        avg_wind_dir: day.avg_wind_dir,
        humidity: day.humidity
      }
    end
    render json:
      {
        city: @city,
        weather: @weather
      }
  end

  def everything_else_monthly
    @city = City.find(params[:id])
    @weather = @city.weather_days.order(:date).map do |day|
      {
        city: day.city_id,
        date: day.date,
        year: day.year,
        month: day.month,
        day: day.day,
        summary: day.summary,
        cloud_cover: day.cloud_cover,
        avg_dewpt: day.avg_dewpt,
        avg_wind_spd: day.avg_wind_spd,
        avg_wind_dir: day.avg_wind_dir,
        humidity: day.humidity
      }
    end

    @weather = @weather.group_by do |weather_hash|
      weather_hash[:month]
    end
    render json:
      {
        city: @city,
        weather: @weather
      }
  end

  def everything_else_yearly
    @city = City.find(params[:id])
    @weather = @city.weather_days.order(:date).map do |day|
      {
        city: day.city_id,
        date: day.date,
        year: day.year,
        month: day.month,
        day: day.day,
        summary: day.summary,
        cloud_cover: day.cloud_cover,
        avg_dewpt: day.avg_dewpt,
        avg_wind_spd: day.avg_wind_spd,
        avg_wind_dir: day.avg_wind_dir,
        humidity: day.humidity
      }
    end

    @weather = @weather.group_by do |weather_hash|
      weather_hash[:year]
    end
    render json:
      {
        city: @city,
        weather: @weather
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

end