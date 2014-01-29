class AddLinksToNewVehicles < ActiveRecord::Migration
  def change
  	add_column :new_vehicles, :link, :string
  end
end
