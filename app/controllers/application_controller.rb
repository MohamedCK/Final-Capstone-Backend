class ApplicationController < ActionController::API
  before_action :include_concerns
  before_action :configure_permitted_parameters, if: :devise_controller?

  private

  def include_concerns
    self.class.include JsonResponseHelper
    self.class.include ExceptionHandler
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: %i[name email password password_confirmation])
    devise_parameter_sanitizer.permit(:sign_in, keys: %i[email password])
  end
end
