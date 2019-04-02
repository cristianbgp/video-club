Rails.application.routes.draw do
  resources :orders
  resources :cassettes
  resources :castings
  resources :movies
  resources :actors
  resources :categories
  resources :formatos
  resources :members
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
