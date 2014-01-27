json.array!(@exteriors) do |exterior|
  json.extract! exterior, :id, :name
  json.url exterior_url(exterior, format: :json)
end
