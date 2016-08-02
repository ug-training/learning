Rails.application.routes.draw do
  get 'stat_page/home'

  get 'stat_page/help'

  get 'static_page/home'

  get 'static_page/help'

 root 'application#hello'
end
