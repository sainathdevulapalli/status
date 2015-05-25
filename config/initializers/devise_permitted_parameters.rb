# config/initializers/devise_permitted_parameters.rb
module DevisePermittedParameters
  extend ActiveSupport::Concern

  included do
    before_filter :configure_permitted_parameters
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:first_name, 
        :last_name, :profile_name, :email, :password, :password_confirmation) }
  end

end

DeviseController.send :include, DevisePermittedParameters