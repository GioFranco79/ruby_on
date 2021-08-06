Rails.application.routes.draw do
  root to: "home#index"
  get 'home/index'
  resources :agendas
  resources :horarios
  resources :pacientes
  resources :profesionals
  resources :usuarios
  resources :centros
  resources :clientes
  # post "procesar" => "pacientes#centrar"
  post "mostrar" => "pacientes#bcentro"
  post "procesar" => "pacientes#procesar"
  # post "centrar" => "pacientes#centrar"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
