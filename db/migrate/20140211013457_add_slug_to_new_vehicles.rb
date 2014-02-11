class AddSlugToNewVehicles < ActiveRecord::Migration
  def change
  	add_column :new_vehicles, :slug, :string
  end
end
