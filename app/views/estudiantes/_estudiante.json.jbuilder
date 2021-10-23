json.extract! estudiante, :id, :nombre, :app_paterno, :app_materno, :curso_id, :created_at, :updated_at
json.url estudiante_url(estudiante, format: :json)
