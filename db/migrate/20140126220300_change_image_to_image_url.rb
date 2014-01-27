class ChangeImageToImageUrl < ActiveRecord::Migration
  def change
  	rename_column :photos, :image, :image_url
  end
end
