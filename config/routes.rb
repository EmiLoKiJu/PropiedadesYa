Rails.application.routes.draw do
  root 'properties#index'

  devise_for :users
  resources :properties
  resources :imgs, only: [:index, :show, :new, :create]
  resources :commune, only: [:show]
end
