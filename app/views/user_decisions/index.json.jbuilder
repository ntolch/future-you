json.array!(@user_decisions) do |user_decision|
  json.extract! user_decision, :id, :choice
  json.url user_decision_url(user_decision, format: :json)
end
