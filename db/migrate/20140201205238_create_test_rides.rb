class CreateTestRides < ActiveRecord::Migration
  def change
    create_table :test_rides do |t|
      t.string :first
      t.string :last
      t.string :phone
      t.string :email
      t.boolean :method_phone
      t.boolean :method_email
      t.boolean :morning
      t.boolean :afternoon
      t.boolean :evening
      t.text :comments

      t.timestamps
    end
  end
end
