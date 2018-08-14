Rails.application.routes.draw do
  # resources :artists, :songs

  get '/songs', to: 'songs#index', as: 'songs'
  get '/songs/new', to: 'songs#new', as: 'new_song'
  get '/songs/:id', to: 'songs#show', as: 'song'
  get '/songs/:id/edit', to: 'songs#edit', as: 'edit_song'
  post '/songs', to: 'songs#create'
  patch '/songs', to: 'songs#update'
  delete '/songs/:id', to: 'songs#destroy'


  get '/artists', to: 'artists#index', as: 'artists'
  get 'artists/new', to: 'artists#new', as: 'new_artist'
  get '/artists/:id', to: 'artists#show', as: 'artist'
  get '/artists/:id', to: 'artists#edit', as: 'edit_artist'
  post '/artists', to: 'artists#create'
  patch '/artists', to: 'artists#update'
  delete '/artists/:id', to: 'artists#destroy'


end
