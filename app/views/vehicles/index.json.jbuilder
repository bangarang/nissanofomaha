json.array!(@vehicles) do |vehicle|
  json.extract! vehicle, :id, :make, :model, :year, :vin, :city_mpg, :highway_mpg, :msrp, :price, :photos, :mileage, :drivetrain_desc, :m_a
  json.url vehicle_url(vehicle, format: :json)
end
