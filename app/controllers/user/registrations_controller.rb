class User::RegistrationsController < Devise::RegistrationsController
    before_action :configure_permitted_parameters

    protected

    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys:[:user_name])
        devise_parameter_sanitizer.permit(:account_update, keys:[:user_name])

    end
end