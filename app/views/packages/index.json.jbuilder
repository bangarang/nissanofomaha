json.array!(@packages) do |package|
  json.extract! package, :id, :model, :msrp, :city, :hwy, :features
  json.url package_url(package, format: :json)
end
