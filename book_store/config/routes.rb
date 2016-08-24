Rails.application.routes.draw do

  get 'sessions/new'

  root 'basic_page#home'
#  get '/login', to: 'basic_page#login'
  get '/signup', to: 'users#new'
  post '/signup',  to: 'users#create'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  resources :users
  resources :users

end
