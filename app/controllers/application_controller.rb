class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception
    config.serve_static_assets = true

    before_action :configure_permitted_parameters, if: :devise_controller?
  
    protected
  
    def configure_permitted_parameters
      added_attrs = [:nickname, :email, :password, :password_confirmation, :remember_me, :image, :phone_num, :manner]
      devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
      devise_parameter_sanitizer.permit :account_update, keys: added_attrs
    end
end