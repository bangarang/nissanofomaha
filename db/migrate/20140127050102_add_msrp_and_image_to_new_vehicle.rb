class AddMsrpAndImageToNewVehicle < ActiveRecord::Migration
  def change
  	add_column :new_vehicles, :msrp, :string
  	add_column :new_vehicles, :image, :string
  end
end
