json.array!(@shops) do |shop|
  json.extract! shop, :id, :url, :shop_id
  json.url shop_url(shop, format: :json)
end
