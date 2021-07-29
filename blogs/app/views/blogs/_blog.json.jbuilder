json.extract! blog, :id, :nombre, :descripcion, :created_at, :updated_at
json.url blog_url(blog, format: :json)
