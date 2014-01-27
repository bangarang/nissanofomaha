class AddImageUrlToExterior < ActiveRecord::Migration
  def change
  	add_column :exteriors, :image_url, :string
  end
end
