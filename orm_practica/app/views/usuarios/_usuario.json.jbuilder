json.extract! usuario, :id, :nombre, :apellido, :edad, :mail, :clave, :rol_id, :created_at, :updated_at
json.url usuario_url(usuario, format: :json)
