json.array!(@blogposts) do |blogpost|
  json.extract! blogpost, :id, :content, :user_id
  json.url blogpost_url(blogpost, format: :json)
end
