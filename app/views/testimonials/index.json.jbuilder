json.array!(@testimonials) do |testimonials|
  json.extract! testimonials, :id, :content, :user_id
  json.url testimonials_url(testimonials, format: :json)
end
