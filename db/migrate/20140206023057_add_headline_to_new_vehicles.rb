class AddHeadlineToNewVehicles < ActiveRecord::Migration
  def change
  	add_column :new_vehicles, :headline, :text
  end
end
