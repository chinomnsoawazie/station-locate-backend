Rails.application.routes.draw do

  resources :users
  resources :login, only: [:create]
  resources :stations

end
