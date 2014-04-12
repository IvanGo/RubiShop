json.array!(@viewscounts) do |viewscount|
  json.extract! viewscount, :id, :bow_id, :crossbow_id, :count
  json.url viewscount_url(viewscount, format: :json)
end
