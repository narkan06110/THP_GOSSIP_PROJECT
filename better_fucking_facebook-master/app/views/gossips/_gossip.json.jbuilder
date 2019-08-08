json.extract! gossip, :id, :title, :content, :author, :created_at, :updated_at
json.url gossip_url(gossip, format: :json)
