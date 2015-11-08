json.array!(@daily_purchases) do |daily_purchase|
  json.extract! daily_purchase, :id, :listing_id, :day
  json.url daily_purchase_url(daily_purchase, format: :json)
end
