class CreateNewVehicles < ActiveRecord::Migration
  def change
    create_table :new_vehicles do |t|
      t.string :name
      t.text :description
      t.integer :city_mpg
      t.integer :highway_mpg

      t.timestamps
    end
  end
end
