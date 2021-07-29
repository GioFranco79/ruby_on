json.extract! mensaje, :id, :autor, :mensaje, :post_id, :created_at, :updated_at
json.url mensaje_url(mensaje, format: :json)
