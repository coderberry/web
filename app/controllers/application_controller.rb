class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  layout :layout_by_resource

  protected

    def configure_permitted_parameters
      added_attrs = %i(
        first_name
        last_name
        address_1
        address_2
        city
        region
        postal_code
        country
        email
      )
      devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
      devise_parameter_sanitizer.permit :account_update, keys: added_attrs
    end

  private

    def layout_by_resource
      if current_user
        "application"
      else
        "home"
      end
    end
end
