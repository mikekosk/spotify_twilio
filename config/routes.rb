Rails.application.routes.draw do
  get 'users/new'

  get 'artists/index'
  get 'artists/show'
  get '/artists', to: 'artists#index'
  get '/artists/:id', to:'artists#show', as: 'artist'
  root 'home#index'
  get '/auth/spotify/callback', to: 'users#spotify'
  get '/auth/spotify'
end
