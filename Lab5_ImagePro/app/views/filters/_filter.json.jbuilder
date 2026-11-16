json.extract! filter, :id, :name, :category, :intensity, :enabled, :created_at, :updated_at
json.url filter_url(filter, format: :json)
