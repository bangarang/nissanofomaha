class ChangeStandardEquipmentTypeInVehciles < ActiveRecord::Migration
  def up
    change_column :vehicles, :standardequipment, :text
  end

  def down
    change_column :vehicles, :standardequipment, :string
  end
end
