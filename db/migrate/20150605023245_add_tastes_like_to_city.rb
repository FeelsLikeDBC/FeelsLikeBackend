class AddTastesLikeToCity < ActiveRecord::Migration
  def change
    add_column :cities, :tastes_like, :text
  end
end
