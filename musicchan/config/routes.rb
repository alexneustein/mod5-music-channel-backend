Rails.application.routes.draw do
  resources :users
  resources :types
  resources :songs

  # routes for the homepage top six components
  get '/songtitles', to: 'songs#indextitles'

end
