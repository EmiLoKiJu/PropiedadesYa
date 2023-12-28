Rails.application.routes.draw do
  devise_for :users
  resources :propertys
  resources :imgs, only: [:index, :show, :new, :create]
end
