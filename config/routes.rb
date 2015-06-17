Rails.application.routes.draw do

  root  "home#home"

  resources :photos
  resources :albums

  # get "/show/:id" => "show#show"

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  get '/signup' => 'users#new'
  post '/users' => 'users#create'

end