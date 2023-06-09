Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'offers#index'
  get 'dashboard', to: 'pages#dashboard'
  get 'modal', to: 'offers#modal'

  resources :offers
end
