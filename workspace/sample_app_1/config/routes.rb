Rails.application.routes.draw do
  root 'stat_page#home'
  get '/help', to: 'stat_page#help'
  get '/contact', to: 'stat_page#contact'
  get '/about', to: 'stat_page#about'
  get  '/signup',  to: 'users#new'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  resources :users
  resources :account_activations, only: [:edit]
  resources :password_resets, only: [:new, :create, :edit, :update]
  resources :microposts,          only: [:create, :destroy]


  get 'static_page/home'
  get'static_page/help'
end
