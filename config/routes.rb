Rails.application.routes.draw do
  get 'pages/home'

  get 'pages/about'

 controller :sessions do
	get 'login' => :new
	post 'login' => :create
	get 'logout' => :destroy
	post 'logout' => :destroy
	end
	

  resources :users
  resources :genres
  resources :movies
  root 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
