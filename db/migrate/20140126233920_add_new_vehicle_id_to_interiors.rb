class AddNewVehicleIdToInteriors < ActiveRecord::Migration
  def change
  	add_column :interiors, :new_vehicle_id, :integer
  end
end
