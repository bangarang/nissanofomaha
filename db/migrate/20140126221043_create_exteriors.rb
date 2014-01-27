class CreateExteriors < ActiveRecord::Migration
  def change
    create_table :exteriors do |t|
      t.string :name

      t.timestamps
    end
  end
end
