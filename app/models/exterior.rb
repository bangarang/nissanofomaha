class Exterior < ActiveRecord::Base
	has_many :photos
	belongs_to :new_vehicle

	def slug
		self.name.parameterize
	end 
end
