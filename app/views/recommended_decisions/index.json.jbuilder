json.array!(@recommended_decisions) do |recommended_decision|
  json.extract! recommended_decision, :id, :content
  json.url recommended_decision_url(recommended_decision, format: :json)
end
