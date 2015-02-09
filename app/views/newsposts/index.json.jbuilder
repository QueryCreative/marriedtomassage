json.array!(@newsposts) do |newspost|
  json.extract! newspost, :id, :content, :user_id
  json.url newspost_url(newspost, format: :json)
end
