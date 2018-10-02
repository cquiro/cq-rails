module Api
  module V1
    class ApiController < ApplicationController
      include DeviseTokenAuth::Concerns::SetUserByToken

      before_action :authenticate_user!, unless: :devise_controller?
      before_action :set_locale

      private

      def set_locale
        current_user&.locale || I18n.default_locale
      end
    end
  end
end
