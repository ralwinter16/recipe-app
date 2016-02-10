json.array!(@comments) do |comment|
  json.extract! comment, :id, :entry, :user_id, :recipe_id
  json.url comment_url(comment, format: :json)
end
