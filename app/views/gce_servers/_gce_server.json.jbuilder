json.extract! gce_server, :id, :gce_server_associable_id, :gce_server_associable_type, :identity, :zone, :created_at, :updated_at
json.url gce_server_url(gce_server, format: :json)
