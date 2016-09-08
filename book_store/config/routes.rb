Rails.application.routes.draw do

  get 'sessions/new'

  root 'basic_page#home'
  get  '/about', to: 'basic_page#about'
  get  '/contact', to: 'basic_page#contact'
  get '/signup', to: 'users#new'
  post '/signup',  to: 'users#create'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  resources :users
  resources :account_activations, only: [:edit]  
  resources :books,          only: [:create, :edit, :update, :destroy]
end
