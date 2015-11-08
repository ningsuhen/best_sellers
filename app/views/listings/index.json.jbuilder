json.array!(@listings) do |listing|
  json.extract! listing, :id, :item_name, :image, :url, :shop_id
  json.url listing_url(listing, format: :json)
end
