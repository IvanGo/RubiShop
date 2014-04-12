json.array!(@product_reitings) do |product_reiting|
  json.extract! product_reiting, :id, :bow_id, :crossbow_id, :user_id, :raiting
  json.url product_reiting_url(product_reiting, format: :json)
end
