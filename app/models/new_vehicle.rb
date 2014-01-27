class NewVehicle < ActiveRecord::Base
	has_many :exteriors
	has_many :interiors
	has_one :photo

	mount_uploader :image, ImageUploader
end
