json.array!(@posts) do |post|
  json.extract! post, :id, :title, :description, :author, :category
  json.url post_url(post, format: :json)
end
