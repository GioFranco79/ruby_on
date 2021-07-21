json.extract! direccion, :id, :calle, :ciudad, :estado, :usuario_id, :created_at, :updated_at
json.url direccion_url(direccion, format: :json)
