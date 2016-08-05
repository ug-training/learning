Rails.application.routes.draw do
  get 'users/new'

  root 'stat_page#home'

  get '/help', to: 'stat_page#help'

  get '/contact', to: 'stat_page#contact'

  get '/about', to: 'stat_page#about'

  get  '/signup',  to: 'users#new'

  get 'static_page/home'

  get 'static_page/help'

end
