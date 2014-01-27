class Interior < ActiveRecord::Base
	has_many :photos
	belongs_to :new_vehicle

	def images
		tmp = []
		for p in self.photos
			tmp << p.image_url
		end
		return tmp.to_s
	end

	def slug
		self.name.parameterize
	end 
end
