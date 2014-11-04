class ChangeImageUrlsTypeInVehciles < ActiveRecord::Migration
  def up
    change_column :vehicles, :imageurls, :text
  end

  def down
    change_column :vehicles, :imageurls, :string
  end
end
