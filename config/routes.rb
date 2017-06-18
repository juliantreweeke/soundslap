Rails.application.routes.draw do



  root to: "sounds#index"

  get '/login' => 'session#new'         #login form
  post '/login' => 'session#create'   # check credentials and attempt login
  delete '/login' => 'session#destroy'  # log out destroy session

  resources :sounds

  resources :users


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
