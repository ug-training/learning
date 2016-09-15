Rails.application.routes.draw do

  devise_for :users, path_names: { sign_in: 'login', sign_out: 'logout', registrations: 'signup' } 
  devise_scope :user do
  get '/signup', to: 'devise/registrations#new'
  post '/signup', to: 'devise/registrations#create'
  get    '/login',   to: 'devise/sessions#new'
  post   '/login',   to: 'devise/sessions#create'
  delete '/logout',  to: 'devise/sessions#destroy'
  end
  #devise_scope :user do
  # get '/sign-in' => "devise/sessions#new", :as => :login
  #get 'sessions/new'

  root 'basic_page#home'
  get  '/about', to: 'basic_page#about'
  get  '/contact', to: 'basic_page#contact'
  resources :users, :only => [:index, :show]
  get '/user', to: 'users#show'
  get '/users', to: 'user#index'
  #resources :account_activations, only: [:edit]  
  resources :books,          only: [:create, :edit, :update, :destroy]
end
