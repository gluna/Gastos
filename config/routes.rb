Rails.application.routes.draw do

  resources :gastos
  resources :tipo_gastos
  resources :tipo_receita
  resources :receita

  get 'consulta_por_mes', to: 'gastos#consulta_por_mes'
  post 'consulta_por_mes', to: 'gastos#consulta_por_mes'

  get 'consulta_por_ano', to: 'gastos#consulta_por_ano'
  post 'consulta_por_ano', to: 'gastos#consulta_por_ano'

  get 'consulta_receita_despesa', to: 'gastos#consulta_receita_despesa'
  post 'consulta_receita_despesa', to: 'gastos#consulta_receita_despesa'

  root 'principal#principal'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
