json.array!(@specials) do |specials|
  json.extract! specials, :id, :content, :user_id
  json.url testimonials_url(specials, format: :json)
end
