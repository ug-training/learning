Rails.application.routes.draw do

  root 'stat_page#home'

  get '/help', to: 'stat_page#help'

  get '/contact', to: 'stat_page#contact'

  get '/about', to: 'stat_page#about'

  get  '/signup',  to: 'users#new'
  post '/signup',  to: 'users#create'

  get 'static_page/home'
  get'static_page/help'
  resources :users
end
