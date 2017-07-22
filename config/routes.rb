Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/calendar', to: 'static_pages#calendar', as: 'calendar'

  root 'static_pages#home'

end
