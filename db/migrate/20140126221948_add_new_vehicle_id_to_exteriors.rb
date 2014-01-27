class AddNewVehicleIdToExteriors < ActiveRecord::Migration
  def change
  	add_column :exteriors, :new_vehicle_id, :integer
  end
end
