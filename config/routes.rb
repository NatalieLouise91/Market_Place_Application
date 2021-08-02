Rails.application.routes.draw do
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
  get 'loan_order/show'
  # show index of loan orders
  get 'loan_order/index'

  # successful payments of loan orders
  get '/loan_order/success', to: "loan_order#success"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
