class AddLinksToPackages < ActiveRecord::Migration
  def change
  	remove_column :new_vehicles, :link
  	add_column :packages, :link, :string
  end
end
