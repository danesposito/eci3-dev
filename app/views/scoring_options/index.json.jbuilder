json.array!(@scoring_options) do |scoring_option|
  json.extract! scoring_option, :id, :indicator_id, :description, :value, :not_applicable
  json.url scoring_option_url(scoring_option, format: :json)
end
