json.array!(@conventions) do |convention|
  json.extract! convention, :id, :name, :description
  json.url convention_url(convention, format: :json)
end
