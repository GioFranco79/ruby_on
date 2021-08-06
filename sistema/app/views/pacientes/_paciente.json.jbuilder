json.extract! paciente, :id, :rut, :nombre, :apellido, :fechanac, :email, :fono, :created_at, :updated_at
json.url paciente_url(paciente, format: :json)
