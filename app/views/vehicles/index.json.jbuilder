json.array!(@vehicles) do |vehicle|
  json.extract! vehicle, :id, :make, :model, :year, :vin, :city_mpg, :highway_mpg, :msrp, :price, :photos, :odometer
  json.url vehicle_url(vehicle, format: :json)
end
