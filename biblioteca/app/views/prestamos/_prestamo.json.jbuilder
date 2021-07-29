json.extract! prestamo, :id, :fechad, :usuario_id, :libro_id, :created_at, :updated_at
json.url prestamo_url(prestamo, format: :json)
