class AddVautoNameToNewVehicles < ActiveRecord::Migration
  def change
    add_column :new_vehicles, :vauto_name, :string
  end
end
