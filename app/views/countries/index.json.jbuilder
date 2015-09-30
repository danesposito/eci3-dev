json.array!(@countries) do |country|
  json.extract! country, :id, :name, :alternative_name, :country_code, :description
  json.url country_url(country, format: :json)
end
