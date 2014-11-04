class AddEngineToVehicles < ActiveRecord::Migration
  def change
    add_column :vehicles, :engine, :string
  end
end
