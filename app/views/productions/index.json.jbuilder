json.array!(@productions) do |production|
  json.extract! production, :id, :title, :price
  json.url production_url(production, format: :json)
end
