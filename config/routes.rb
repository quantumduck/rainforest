Rails.application.routes.draw do

  root 'products#index'

  resources :products do
    resources :reviews, only: %i(show create update destroy)
  end
  # resource :users, only: [:new, :create]
  get "/sign_up", to: 'users#new'
  post "/sign_up", to: 'users#create', as: :users #required for form_for
  # resource :sessions, only: %i(new create destroy)
  get "/login", to: 'sessions#new'
  post "/login", to: 'sessions#create'
  delete "/login", to: 'sessions#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
