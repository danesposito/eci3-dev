json.array!(@cluster_members) do |cluster_member|
  json.extract! cluster_member, :id, :cluster_id, :convention_id
  json.url cluster_member_url(cluster_member, format: :json)
end
