class ChangeCommentsTypeInVehciles < ActiveRecord::Migration
  def up
    change_column :vehicles, :comments, :text
  end

  def down
    change_column :vehicles, :comments, :string
  end
end