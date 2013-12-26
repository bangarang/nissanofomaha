class Vehicle < ActiveRecord::Base

	# def self.import(file)
	#   CSV.foreach(file.path, headers: true) do |row|
	#   	vehicle = find_by_vin(row["vin"]) || new
	#     vehicle.attributes = row.to_hash.slice(*accessible_attributes)
	#     vehicle.save!
	#     # Vehicle.create! row.to_hash
	#   end
	# end
end
