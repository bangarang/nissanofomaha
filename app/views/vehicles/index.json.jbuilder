json.array!(@vehicles) do |vehicle|
  json.extract! vehicle, :id, :make, :model, :year, :vin
  json.url vehicle_url(vehicle, format: :json)
end
