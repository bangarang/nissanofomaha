class Vehicle < ActiveRecord::Base

	# def self.import(file)
	#   CSV.foreach(file.path, headers: true) do |row|
	#   	vehicle = find_by_vin(row["vin"]) || new
	#     vehicle.attributes = row.to_hash.slice(*accessible_attributes)
	#     vehicle.save!
	#     # Vehicle.create! row.to_hash
	#   end
	# end

	def to_param
		vin
	end

	def mileage_k
		unless self.mileage.blank?
			(self.mileage.to_i / 1000)
		end
	end

	def photos 
		self.imageurls.to_s.split("|")
	end 

	def m_a
		if self.transmission.to_s.include? "Manual"
			"M"
		else
			"A"
		end
	end
end
