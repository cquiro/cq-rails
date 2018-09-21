Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'users'

  devise_scope :user do
    get '/', to: "devise/registrations#new"
  end

  root to: "devise/registrations#new"
end
