json.extract! change_request, :id, :app_id, :todo, :created_at, :updated_at
json.url change_request_url(change_request, format: :json)
