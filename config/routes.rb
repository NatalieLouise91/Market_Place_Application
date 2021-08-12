Rails.application.routes.draw do
  resources :loan_orders
  resources :artefacts
  resources :profiles
  devise_for :users

# ^^^ using resources to implement the basic CRUD routes for loan_orders, artefacts and profiles
# ^^^ using devise authentication for the user entity

  # main page
  root 'home#page'

  # successful payments of loan orders
  get '/payments/success', to: "payments#success"

  # ultrahook to store metadata
  post '/payments/webhook', to: 'payments#webhook'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
