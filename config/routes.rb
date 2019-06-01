Rails.application.routes.draw do

	resources :users, :attractions

	root 'homeview#welcome'

	get 'signin', to: 'sessions#new'
	post 'signin', to: 'sessions#create'
end
