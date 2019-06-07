json.extract! hamburger, :id, :name, :description, :price, :created_at, :updated_at
json.url hamburger_url(hamburger, format: :json)
