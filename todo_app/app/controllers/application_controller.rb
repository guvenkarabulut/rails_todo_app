class ApplicationController < ActionController::Base
  protect_from_forgery
  layout :layout_by_resource
  before_action :configure_permitted_parameters, if: :devise_controller?

  def layout_by_resource
    if devise_controller? && resource_name == :user && (action_name == 'new' || action_name == 'create')
      'devise'
    else
      'application'
    end
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:email, :password) }
    devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:avatar, :email, :password, :current_password) }
  end
end
