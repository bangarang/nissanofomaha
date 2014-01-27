class Photo < ActiveRecord::Base
	before_create :default_name

	# mount_uploader :image, ImageUploader

	

	def default_name
    self.name ||= File.basename(image_url, '.*').titleize if image_url
  end

end
