Rails.application.routes.draw do
  root 'basic_page#home'

  get '/login', to: 'basic_page#login'

end
