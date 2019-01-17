json.extract! exposicion, :id, :titulo_expo, :fechas, :texto, :imagenes_expo, :created_at, :updated_at
json.url exposicion_url(exposicion, format: :json)
