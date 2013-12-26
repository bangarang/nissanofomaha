class ChangeIntegerToString < ActiveRecord::Migration
  def self.up
   change_column :vehicles, :dealerid, :string
  end

  def self.down
   change_column :vehicles, :dealerid, :integer
  end
end
