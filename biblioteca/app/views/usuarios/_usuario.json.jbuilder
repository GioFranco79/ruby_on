json.extract! usuario, :id, :nombre, :apellido, :mail, :direccion, :fono, :created_at, :updated_at
json.url usuario_url(usuario, format: :json)
