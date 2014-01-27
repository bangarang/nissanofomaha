json.array!(@interiors) do |interior|
  json.extract! interior, :id, :name
  json.url interior_url(interior, format: :json)
end
