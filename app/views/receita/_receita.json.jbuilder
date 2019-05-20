json.extract! receita, :id, :dtreceita, :tipo_receita_id, :valor, :created_at, :updated_at
json.url receita_url(receita, format: :json)
