json.array!(@ideal_outcomes) do |ideal_outcome|
  json.extract! ideal_outcome, :id, :new_situation_id, :recommended_decision_id
  json.url ideal_outcome_url(ideal_outcome, format: :json)
end
