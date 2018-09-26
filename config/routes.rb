Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'users'

  api_version(module: 'Api::V1', path: { value: 'api/v1' }, defaults: { format: :json })  do
    resources :books, only: [:index, :show]

    resources :users, only: :none do
      resources :rents, only: [:index, :create]
    end
  end
end
