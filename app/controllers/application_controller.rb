class ApplicationController < ActionController::Base
  include Pundit
  include Wor::Paginate

  rescue_from Pundit::NotAuthorizedError, with: :not_authorized

  protect_from_forgery with: :null_session

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: %i[first_name last_name locale])
  end

  def not_authorized
    render json: {}, status: :unauthorized
  end
end
