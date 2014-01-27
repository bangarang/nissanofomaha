class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :image
      t.integer :interior_id
      t.integer :exterior_id

      t.timestamps
    end
  end
end
