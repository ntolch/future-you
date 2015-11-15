json.array!(@past_situations) do |past_situation|
  json.extract! past_situation, :id, :description, :user_id
  json.url past_situation_url(past_situation, format: :json)
end
