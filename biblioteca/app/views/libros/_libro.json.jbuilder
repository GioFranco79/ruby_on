json.extract! libro, :id, :nombre, :editorial, :anho, :created_at, :updated_at
json.url libro_url(libro, format: :json)
