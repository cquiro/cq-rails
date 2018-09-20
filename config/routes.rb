Rails.application.routes.draw do
  devise_for :users
  
  devise_scope :user do
    get '/', to: "devise/registrations#new"
  end

  root to: "devise/registrations#new"
end
