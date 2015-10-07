json.array!(@region_countries) do |region_country|
  json.extract! region_country, :id, :region_id, :country_id
  json.url region_country_url(region_country, format: :json)
end
