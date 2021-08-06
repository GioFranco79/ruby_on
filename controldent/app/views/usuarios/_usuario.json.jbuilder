json.extract! usuario, :id, :rut, :nombre, :apellido, :fono, :email, :password, :cliente_id, :centro_id, :created_at, :updated_at
json.url usuario_url(usuario, format: :json)
