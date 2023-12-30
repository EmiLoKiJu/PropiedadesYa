Rails.application.routes.draw do
  root 'properties#index'

  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions'
  }

  devise_scope :user do
    get 'users/show/:id', to: 'users/sessions#show', as: :user_profile
    get "/custom_sign_out" => "devise/sessions#destroy", as: :custom_destroy_user_session
  end
  resources :properties

  resources :commune, only: [:show]

  get "attachments/:id/purge", to: "attachments#purge", as: :purge_attachment
end
