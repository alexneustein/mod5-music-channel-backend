Rails.application.routes.draw do
  resources :users
  resources :types
  resources :songs
  resources :messages
  resources :channels


  # routes for the homepage top six components
  get '/songtitles', to: 'songs#indextitles'

  mount ActionCable.server => '/cable'
end
