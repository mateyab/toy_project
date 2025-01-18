json.extract! smallpost, :id, :content, :client_id, :created_at, :updated_at
json.url smallpost_url(smallpost, format: :json)
