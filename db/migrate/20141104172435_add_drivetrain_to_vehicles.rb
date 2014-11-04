class AddDrivetrainToVehicles < ActiveRecord::Migration
  def change
    add_column :vehicles, :drivetrain, :string
  end
end
