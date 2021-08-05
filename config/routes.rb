Rails.application.routes.draw do
  resources :loan_orders
  resources :artefacts
  resources :profiles
  devise_for :users



  # main page
  root 'home#page'
  # new profile
  get '/profiles/new', to: 'profiles#new'
  # show profile
  get '/profile', to: 'profile#show'
  # edit profile
  get 'profiles/:id/edit', to: 'profiles#edit'
  # show individual loan order
  
  # successful payments of loan orders
  get '/payments/success', to: "payments#success"
  # ultrahook to store metadata
  post '/payments/webhook', to: 'payments#webhook'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
