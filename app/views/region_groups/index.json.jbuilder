json.array!(@region_groups) do |region_group|
  json.extract! region_group, :id, :region_source_id, :name, :description
  json.url region_group_url(region_group, format: :json)
end
