json.array!(@countries) do |country|
  json.extract! country, :id, :name, :population, :area, :un_member
  json.url country_url(country, format: :json)
end
