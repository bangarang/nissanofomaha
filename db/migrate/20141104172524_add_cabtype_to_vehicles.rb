class AddCabtypeToVehicles < ActiveRecord::Migration
  def change
    add_column :vehicles, :cabtype, :string
  end
end
