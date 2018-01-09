json.extract! gasto, :id, :dtgasto, :tipo_gasto_id, :valor, :created_at, :updated_at
json.url gasto_url(gasto, format: :json)
