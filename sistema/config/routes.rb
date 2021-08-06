Rails.application.routes.draw do
  resources :clientes
  get 'home/index'
  resources :agendas
  resources :horarios
  resources :pacientes
  resources :centros
  resources :profesionals
  #inicio
  root to: "sessions#new"  
  #users
  get "users" => "users#show"
  post "users/new" => "users#create"


  #login y session
  get "users/show", to: "users#show"
  get "register" => "welcome#index"
  post "sessions/new/user" => "sessions#user_create"
  delete "sessions/destroy/user" => "sessions#user_destroy"

  delete '/logins/destroy' => "sessions#destroy" , as: "logout"

end
