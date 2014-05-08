json.array!(@raitings) do |raiting|
  json.extract! raiting, :id, :bow_id, :crossbow_id, :raiting
  json.url raiting_url(raiting, format: :json)
end
