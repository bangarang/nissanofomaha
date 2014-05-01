json.array!(@specials) do |special|
  json.extract! special, :id, :name, :description, :price, :image
  json.url special_url(special, format: :json)
end
