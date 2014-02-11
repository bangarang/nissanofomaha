class NewVehicle < ActiveRecord::Base
	has_many :exteriors
	has_many :interiors
	has_many :packages

	belongs_to :category

	mount_uploader :image, ImageUploader

	before_validation :generate_slug

	def to_param
		slug
	end

	def generate_slug
		self.slug ||= name.parameterize
	end
end
