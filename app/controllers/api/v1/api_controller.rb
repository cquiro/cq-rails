module Api
  module V1
    class ApiController < ApplicationController
      protect_from_forgery with: :null_session

      include DeviseTokenAuth::Concerns::SetUserByToken

      before_action :authenticate_user!, unless: :devise_controller?
    end
  end
end
