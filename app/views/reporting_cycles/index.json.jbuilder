json.array!(@reporting_cycles) do |reporting_cycle|
  json.extract! reporting_cycle, :id, :convention_id, :date, :name, :description
  json.url reporting_cycle_url(reporting_cycle, format: :json)
end
