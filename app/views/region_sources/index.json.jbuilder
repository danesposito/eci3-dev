json.array!(@region_sources) do |region_source|
  json.extract! region_source, :id, :name, :description, :website
  json.url region_source_url(region_source, format: :json)
end
