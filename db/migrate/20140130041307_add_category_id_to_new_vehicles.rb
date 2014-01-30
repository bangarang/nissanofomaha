class AddCategoryIdToNewVehicles < ActiveRecord::Migration
  def change
  	add_column :new_vehicles, :category_id, :integer
  end
end
