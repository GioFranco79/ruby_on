Rails.application.routes.draw do
  get 'extras/index'
  get 'extras/new'
  get "perros" => 'perros#show'
  get 'extras/show'
  get 'extras/update'
  get 'extras/delete'
  get 'extras/create'
  resources :rols
  resources :roles
  resources :direccions
  resources :usuarios
  resources :clientes
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
