Rails.application.routes.draw do

	resources :users, :attractions

	root 'homeview#welcome'

	get 'signin', to: 'users#signin'
end
