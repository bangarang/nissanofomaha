json.array!(@parts_orders) do |parts_order|
  json.extract! parts_order, :id, :name, :phone, :zip, :email, :year, :make, :model, :vin, :comments
  json.url parts_order_url(parts_order, format: :json)
end
