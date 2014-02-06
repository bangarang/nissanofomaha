class CreatePartsOrders < ActiveRecord::Migration
  def change
    create_table :parts_orders do |t|
      t.string :name
      t.string :phone
      t.string :zip
      t.string :email
      t.string :year
      t.string :make
      t.string :model
      t.string :vin
      t.text :comments

      t.timestamps
    end
  end
end
