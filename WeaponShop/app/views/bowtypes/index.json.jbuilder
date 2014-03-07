json.array!(@bowtypes) do |bowtype|
  json.extract! bowtype, :id, :name
  json.url bowtype_url(bowtype, format: :json)
end
