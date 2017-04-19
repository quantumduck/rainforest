Rails.application.routes.draw do

  root 'products#index'

  resources :products #only: %i(index new show edit)
  # resource :users, only: [:new, :create]
  get "/sign_up", to: 'users#new'
  post "/sign_up", to: 'users#create', as: :users
  # resource :sessions, only: %i(new create destroy)
  get "/login", to: 'sessions#new'
  post "/login", to: 'sessions#create'
  delete "/login", to: 'sessions#delete'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
