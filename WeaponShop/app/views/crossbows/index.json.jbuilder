json.array!(@crossbows) do |crossbow|
  json.extract! crossbow, :id, :name, :description, :tension_force, :stroke_bowstring, :shoulders_lenght, :arrow_start_speed, :weight, :dimensions, :bolt_lenght, :producer, :crossbowtype_id
  json.url crossbow_url(crossbow, format: :json)
end
