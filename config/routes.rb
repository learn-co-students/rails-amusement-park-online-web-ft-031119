Rails.application.routes.draw do

	resources :users, :attractions

	root 'users#new'

	get 'signin', to: 'sessions#new'
	post 'signin', to: 'sessions#create'
end
