class NewVehicle < ActiveRecord::Base
	has_many :exteriors
	has_many :interiors
	has_many :packages

	mount_uploader :image, ImageUploader
end
