class AddSoundsLikeToCity < ActiveRecord::Migration
  def change
    add_column :cities, :sounds_like, :text
  end
end
