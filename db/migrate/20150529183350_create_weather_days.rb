class CreateWeatherDays < ActiveRecord::Migration
  def change
    create_table :weather_days do |t|
      t.integer :city_id
      t.integer :date
      t.string  :summary
      t.integer :sunrise
      t.integer :sunset
      t.integer :cloud_cover
      t.boolean :rain
      t.integer :precipitation
      t.boolean :snow
      t.integer :snowfall
      t.integer :avg_temp
      t.integer :high_temp
      t.integer :low_temp
      t.integer :avg_dewpt
      t.integer :avg_wind_spd
      t.integer :avg_wind_dir
      t.integer :humidity
      t.integer :high_apparent_temp
      t.integer :low_apparent_temp
      t.integer :avg_apparent_temp

      t.timestamps null: false
    end
  end
end

