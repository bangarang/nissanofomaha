class ChangeMpgTypeInVehciles < ActiveRecord::Migration
  def change
    remove_column :vehicles, :mpghighway
    remove_column :vehicles, :mpgcity

    add_column :vehicles, :mpghighway, :integer, default: 0
    add_column :vehicles, :mpgcity, :integer, default: 0
  end
end
