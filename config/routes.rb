Rails.application.routes.draw do
  root 'products#index'

  resources :products #only: %i(index new show edit)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
