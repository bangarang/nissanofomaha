class RemoveImageFromSpecials < ActiveRecord::Migration
  def change
  	remove_column :specials, :image
  	add_column :photos, :special_id, :integer
  end
end
