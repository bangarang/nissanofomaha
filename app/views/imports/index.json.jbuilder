json.array!(@imports) do |import|
  json.extract! import, :id, :name, :file
  json.url import_url(import, format: :json)
end
