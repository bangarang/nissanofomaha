class ChangePhotoUrlListToText < ActiveRecord::Migration
  def self.up
   change_column :vehicles, :photo_url_list, :text
  end

  def self.down
   change_column :vehicles, :photo_url_list, :string
  end
end
