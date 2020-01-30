Rails.application.routes.draw do

  resources :users, only: [:create, :update, :destroy]
  resources :login, only: [:create]
  resources :stations
  resources :notes, only: [:create, :destroy]
  resources :locations
  get 'users/checkusername/:username', :to => 'users#check_username'

end