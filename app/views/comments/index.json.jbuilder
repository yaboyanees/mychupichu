json.array!(@comments) do |comment|
  json.extract! comment, :id, :rating1, :rating2, :rate_text, :chu_id, :user_id
  json.url comment_url(comment, format: :json)
end
