Rails.application.routes.draw do

  get 'sessions/new'

  root 'stat_page#home'

  get '/help', to: 'stat_page#help'

  get '/contact', to: 'stat_page#contact'

  get '/about', to: 'stat_page#about'

  get  '/signup',  to: 'users#new'
  post '/signup',  to: 'users#create'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'


  get 'static_page/home'
  get'static_page/help'
  resources :users
  resources :account_activations, only: [:edit]
end
