json.extract! cliente, :id, :rut, :razon, :logo, :fono, :email, :ciudad, :comuna, :direccion, :representante, :created_at, :updated_at
json.url cliente_url(cliente, format: :json)
