json.array!(@past_outcomes) do |past_outcome|
  json.extract! past_outcome, :id, :past_situation_id, :user_decision_id
  json.url past_outcome_url(past_outcome, format: :json)
end
