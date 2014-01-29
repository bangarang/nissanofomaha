class CreatePackages < ActiveRecord::Migration
  def change
    create_table :packages do |t|
      t.string :model
      t.string :msrp
      t.integer :city
      t.integer :hwy
      t.text :features
      t.integer :new_vehicle_id

      t.timestamps
    end
  end
end
