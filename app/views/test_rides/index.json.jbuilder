json.array!(@test_rides) do |test_ride|
  json.extract! test_ride, :id, :first, :last, :phone, :email, :method_phone, :method_email, :morning, :afternoon, :evening, :comments
  json.url test_ride_url(test_ride, format: :json)
end
