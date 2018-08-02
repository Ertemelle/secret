Rails.application.routes.draw do

  root to: 'static_pages#home', as: 'home'
  get '/secret', to: 'static_pages#secret', as: 'secret'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
	resources :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
