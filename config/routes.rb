Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  mount_devise_token_auth_for 'User', at: 'users'

  require 'sidekiq/web'
  mount Sidekiq::Web => '/sidekiq'

  api_version(module: 'Api::V1', path: { value: 'api/v1' }, defaults: { format: :json })  do
    resources :books, only: [:index, :show]

    resources :book_suggestions, only: [:create]

    resources :users, only: :none do
      resources :rents, only: [:index, :create]
    end
  end
end
