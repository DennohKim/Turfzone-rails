Rails.application.routes.draw do
  # resources :bookings
  # resources :turves
  # resources :users
  # devise_for :admin_users, ActiveAdmin::Devise.config
  # ActiveAdmin.routes(self)
  # # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # # Defines the root path route ("/")
  # # root "articles#index"

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  post "/signup", to: "users#create"
  get "/me", to: "users#show"
  resources :users, only: [:index, :show]
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
  resources :turves, only: [:index, :show, :create, :update, :delete]
  resources :bookings, only: [:index, :create, :show, :create, :update, :delete]
end
