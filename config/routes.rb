Rails.application.routes.draw do
  root 'propertys#index'

  devise_for :users
  resources :propertys
  resources :imgs, only: [:index, :show, :new, :create]
  resources :commune, only: [:show]
end
