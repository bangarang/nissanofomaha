json.array!(@new_vehicles) do |new_vehicle|
  json.extract! new_vehicle, :id, :name, :description, :city_mpg, :highway_mpg
  json.url new_vehicle_url(new_vehicle, format: :json)
end
