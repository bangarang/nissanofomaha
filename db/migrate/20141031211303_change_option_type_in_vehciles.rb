class ChangeOptionTypeInVehciles < ActiveRecord::Migration
  def up
    change_column :vehicles, :options, :text
  end

  def down
    change_column :vehicles, :options, :string
  end
end
