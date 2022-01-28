class ApplicationController < ActionController::Base
  protected
    def configure_permitted_parameters
      raise "blah"
      devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :email, :password, :password_confirmation])
    end
end
