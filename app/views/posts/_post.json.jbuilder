json.extract! post, :id, :title, :body, :anotation, :title_image, :tags, :created_at, :updated_at
json.url post_url(post, format: :json)
