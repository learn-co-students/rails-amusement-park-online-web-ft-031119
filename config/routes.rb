Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # root "static_pages#home"
  # resources :users, only: [:new, :create, :show]
  #
  # get '/signin', to: 'sessions#new'
  # post '/signin', to: 'sessions#create'
  # delete '/logout', to: 'session#destroy'
  #
  # # get '/signin', to: 'users#signin'
  # # get '/login', to: 'user#login'
  # # get '/signout', to: 'users#signout'
  # resources :attractions
  #
  # post '/rides', to: 'rides#create'

  root 'static#homepage'
  get '/signin', to: 'sessions#new'
  post '/sessions/create', to: 'sessions#create'
  delete '/sessions/delete', to: 'sessions#destroy'

  resources :rides
  resources :attractions
  resources :users
end
