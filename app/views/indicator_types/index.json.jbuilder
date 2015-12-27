json.array!(@indicator_types) do |indicator_type|
  json.extract! indicator_type, :id, :name, :weight, :description
  json.url indicator_type_url(indicator_type, format: :json)
end
