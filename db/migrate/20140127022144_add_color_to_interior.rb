class AddColorToInterior < ActiveRecord::Migration
  def change
  	add_column :interiors, :color, :string
  	rename_column :exteriors, :image, :color
  end
end
