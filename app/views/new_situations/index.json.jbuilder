json.array!(@new_situations) do |new_situation|
  json.extract! new_situation, :id, :description, :user_id
  json.url new_situation_url(new_situation, format: :json)
end
