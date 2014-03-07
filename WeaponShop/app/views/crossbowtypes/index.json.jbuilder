json.array!(@crossbowtypes) do |crossbowtype|
  json.extract! crossbowtype, :id, :name
  json.url crossbowtype_url(crossbowtype, format: :json)
end
