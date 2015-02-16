class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :configure_permitted_parameters, if: :devise_controller?
  # config.to_prepare do 
  #   Devise::SessionsController.layout "single_column_with_banner"
  # end

    
  
  # before_action :authenticate_user!
  # def after_sign_out_path_for(resource_or_scope)
  #   new_user_session_path
  # end


  
  protected 

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(
    :name, 
    :email, 
    :password,
    :password_confirmation,
    :github_name) }
    end
end