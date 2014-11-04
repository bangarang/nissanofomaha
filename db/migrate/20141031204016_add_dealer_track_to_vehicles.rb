class AddDealerTrackToVehicles < ActiveRecord::Migration
  def change
    add_column :vehicles, :feedid, :string
    add_column :vehicles, :stock, :string
    add_column :vehicles, :mileage, :string
    add_column :vehicles, :trim, :string
    add_column :vehicles, :intcolor, :string
    add_column :vehicles, :extcolor, :string
    add_column :vehicles, :genericintcolor, :string
    add_column :vehicles, :genericextcolor, :string
    add_column :vehicles, :retailprice, :string
    add_column :vehicles, :dealercost, :string
    add_column :vehicles, :modelcode, :string
    add_column :vehicles, :extcolorcode, :string
    add_column :vehicles, :intcolorcode, :string
    add_column :vehicles, :condition, :string
    add_column :vehicles, :indate, :string
    add_column :vehicles, :comments, :string
    add_column :vehicles, :imageurls, :string
    add_column :vehicles, :options, :string
    add_column :vehicles, :standardequipment, :string
    add_column :vehicles, :optioncodes, :string
    add_column :vehicles, :mpgcity, :string
    add_column :vehicles, :mpghighway, :string
    add_column :vehicles, :doors, :string
  end
end
