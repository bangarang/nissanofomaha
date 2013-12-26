class ChangeStringToText < ActiveRecord::Migration
  def self.up
   change_column :vehicles, :description, :text
   change_column :vehicles, :features, :text
  end

  def self.down
   change_column :vehicles, :description, :string
   change_column :vehicles, :features, :string
  end
end
