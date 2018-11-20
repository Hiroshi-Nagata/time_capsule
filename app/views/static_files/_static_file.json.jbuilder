json.extract! static_file, :id, :mine_type, :file_name, :data, :created_at, :updated_at
json.url static_file_url(static_file, format: :json)
