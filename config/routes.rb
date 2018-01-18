Rails.application.routes.draw do
  resources :gastos
  resources :tipo_gastos

  get 'consulta_por_mes', to: 'gastos#consulta_por_mes'

  root 'principal#principal'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
