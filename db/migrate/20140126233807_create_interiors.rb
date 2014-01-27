class CreateInteriors < ActiveRecord::Migration
  def change
    create_table :interiors do |t|
      t.string :name

      t.timestamps
    end
  end
end
