json.extract! client, :id, :user_name, :mail, :created_at, :updated_at
json.url client_url(client, format: :json)
