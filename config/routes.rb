Rails.application.routes.draw do
  resources :attractions
  resources :rides
  resources :users
  get 'signin' => 'users#signin'
  post 'login' => 'users#login'
  get 'signout' => 'users#signout'
  post 'go_on_ride' => 'rides#go_on_ride'

  root :to => 'users#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
