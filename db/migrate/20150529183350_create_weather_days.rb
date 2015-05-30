class CreateWeatherDays < ActiveRecord::Migration
  def change
    create_table :weather_days do |t|
      t.integer :city_id
      t.integer :date
      t.integer :year
      t.integer :month
      t.integer :day
      t.string  :summary
      t.integer :sunrise
      t.integer :sunset
      t.float :cloud_cover, :precision => 5, :scale => 2
      t.boolean :rain
      t.float :precipitation, :precision => 5, :scale => 2
      t.boolean :snow
      t.float :snowfall, :precision => 5, :scale => 2
      t.float :avg_temp, :precision => 5, :scale => 2
      t.float :high_temp, :precision => 5, :scale => 2
      t.float :low_temp, :precision => 5, :scale => 2
      t.integer :avg_dewpt
      t.integer :avg_wind_spd
      t.integer :avg_wind_dir
      t.integer :humidity
      t.float :high_apparent_temp, :precision => 5, :scale => 2
      t.float :low_apparent_temp, :precision => 5, :scale => 2
      t.float :avg_apparent_day_temp, :precision => 5, :scale => 2
      t.float :avg_apparent_night_temp, :precision => 5, :scale => 2

      t.timestamps null: false
    end
  end
end

