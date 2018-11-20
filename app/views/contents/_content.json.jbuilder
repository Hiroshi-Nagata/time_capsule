json.extract! content, :id, :user_id, :title, :format, :movie_file_id, :voice_file_id, :text, :address, :sender, :send_at, :post_at, :received_at, :created_at, :updated_at
json.url content_url(content, format: :json)
