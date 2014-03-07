json.array!(@bows) do |bow|
  json.extract! bow, :id, :name, :description, :tension_force, :lenght, :tensionlenght, :arrow_start_speed, :weight, :bow_base, :producer, :bowtype_id
  json.url bow_url(bow, format: :json)
end
