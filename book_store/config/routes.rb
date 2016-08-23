Rails.application.routes.draw do

  root 'basic_page#home'

  get '/login', to: 'basic_page#login'

  get '/signup', to: 'users#new'

end
