json.extract! image, :id, :user_id, :real_name, :image_name, :imageable_id, :imageable_type, :created_at, :updated_at
json.url image_url(image, format: :json)
