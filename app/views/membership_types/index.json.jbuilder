json.array!(@membership_types) do |membership_type|
  json.extract! membership_type, :id, :name, :description
  json.url membership_type_url(membership_type, format: :json)
end
