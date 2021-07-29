Rails.application.routes.draw do
  devise_for :usuarios
  root to: "home#index"
  get 'home/index'
  get "/home", to: "home#index" 
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :edicions
  resources :prestamos
  resources :libros
  resources :autors
  resources :usuarios  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
