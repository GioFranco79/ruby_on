json.extract! cliente, :id, :nombre, :apellido, :edad, :mail, :clave, :created_at, :updated_at
json.url cliente_url(cliente, format: :json)
