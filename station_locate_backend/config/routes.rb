Rails.application.routes.draw do

  resources :users, only: [:index, :create, :update, :destroy]
  resources :login, only: [:create]
  resources :stations
  resources :notes, only: [:create, :destroy]
  resources :locations

end
