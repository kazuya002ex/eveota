Rails.application.routes.draw do
  root 'home#index'

  get '/help', to: 'static_pages#help'
  get '/guide', to: 'static_pages#guide'
  get '/privacy', to: 'static_pages#privacy'
  get '/lp', to: 'static_pages#lp'
end
