class AddLooksLikeToCity < ActiveRecord::Migration
  def change
    add_column :cities, :looks_like, :text
  end
end
