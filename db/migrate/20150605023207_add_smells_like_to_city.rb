class AddSmellsLikeToCity < ActiveRecord::Migration
  def change
    add_column :cities, :smells_like, :text
  end
end
