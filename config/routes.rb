Rails.application.routes.draw do





  root to: "sounds#index"

  get '/login' => 'session#new'         #login form
  post '/login' => 'session#create'   # check credentials and attempt login
  delete '/login' => 'session#destroy'  # log out destroy session

  get '/search' => 'sounds#search'

  get '/record' => 'sounds#record'

  get	'/users/about'=> 'users#about'


  resources :sounds

  resources :users

  resources :comments


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
