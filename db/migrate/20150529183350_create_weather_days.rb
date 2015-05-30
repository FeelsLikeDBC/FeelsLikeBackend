class CreateWeatherDays < ActiveRecord::Migration
  def change
    create_table :weather_days do |t|
      t.integer :city_id
      t.integer :date
      t.string  :summary
      t.integer :sunrise
      t.integer :sunset
      t.decimal :cloud_cover, :precision => 5, :scale => 2
      t.boolean :rain
      t.decimal :precipitation, :precision => 5, :scale => 2
      t.boolean :snow
      t.decimal :snowfall, :precision => 5, :scale => 2
      t.integer :avg_temp, :precision => 5, :scale => 2
      t.integer :high_temp, :precision => 5, :scale => 2
      t.integer :low_temp, :precision => 5, :scale => 2
      t.integer :avg_dewpt
      t.integer :avg_wind_spd
      t.integer :avg_wind_dir
      t.integer :humidity
      t.integer :high_apparent_temp, :precision => 5, :scale => 2
      t.integer :low_apparent_temp, :precision => 5, :scale => 2
      t.integer :avg_apparent_temp, :precision => 5, :scale => 2

      t.timestamps null: false
    end
  end
end

