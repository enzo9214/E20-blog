Rails.application.routes.draw do

	resources :posts do
		resources :comments, only: [:create, :destroy]
	end

	devise_for :users, controllers: {
		sessions: 'users/sessions',
		registrations: 'users/registrations'
	}

	root 'posts#index'

	resources :users 

	get '/dashboard/', to: 'pages#index'
	post '/dashboard/:id', to: 'pages#update'
# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
