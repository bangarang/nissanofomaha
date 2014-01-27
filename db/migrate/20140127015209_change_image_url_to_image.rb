class ChangeImageUrlToImage < ActiveRecord::Migration
  def change
  	rename_column :exteriors, :image_url, :image
  end
end
