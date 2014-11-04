json.array!(@vehicles) do |vehicle|
  json.extract! vehicle, :make, :model, :year, :vin, :mpgcity, :mpghighway, :msrp, :price, :photos, :mileage_k, :drivetrain_desc, :m_a
	json.url vehicle_url(vehicle, format: :json)
end
