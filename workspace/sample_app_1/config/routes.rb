Rails.application.routes.draw do
  get 'stat_page/home'

  get 'stat_page/help'

  get 'stat_page/contact'

  get 'stat_page/about'

  get 'static_page/home'

  get 'static_page/help'

 root 'stat_page#home'
end
