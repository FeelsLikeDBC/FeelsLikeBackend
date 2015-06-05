class AddFeelsLikeToCity < ActiveRecord::Migration
  def change
    add_column :cities, :feels_like, :text
  end
end
