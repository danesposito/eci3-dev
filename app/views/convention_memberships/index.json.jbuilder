json.array!(@convention_memberships) do |convention_membership|
  json.extract! convention_membership, :id, :convention_id, :country_id, :membership_type_id, :date
  json.url convention_membership_url(convention_membership, format: :json)
end
