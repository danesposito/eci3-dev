json.array!(@indicators) do |indicator|
  json.extract! indicator, :id, :indicator_type_id, :record_type_id, :parent_id, :question_number, :indicator_number, :question_text, :indicator_text, :prior_cycle, :prior_question
  json.url indicator_url(indicator, format: :json)
end
