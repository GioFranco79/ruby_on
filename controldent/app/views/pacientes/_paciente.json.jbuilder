json.extract! paciente, :id, :rut, :nombre, :apellido, :fono, :email, :fechanac, :prevision, :created_at, :updated_at
json.url paciente_url(paciente, format: :json)
