class NewVehicle < ActiveRecord::Base
	has_many :exteriors
	has_many :interiors
	has_many :packages

	belongs_to :category

	mount_uploader :image, ImageUploader
end
