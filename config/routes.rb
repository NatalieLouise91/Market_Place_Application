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
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
