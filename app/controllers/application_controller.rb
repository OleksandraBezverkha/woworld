class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead
  # before_filter :update_sanitized_params, if: :devise_controller?
  before_action :configure_permitted_parameters, if: :devise_controller?

  protect_from_forgery with: :exception
  before_filter :set_locale
  skip_before_filter  :verify_authenticity_token
  # def default_url_options(options = {})
  #   {locale: I18n.locale}
  # end
  def set_locale
    I18n.locale = params[:locale]
  end

  def self.default_url_options(options={})
    options.merge({ :locale => I18n.locale })
  end

  
  private

  # def set_locale
  #   I18n.locale = params[:locale] || I18n.default_locale
  # end

    def configure_permitted_parameters
      devise_parameter_sanitizer.for(:sign_up) { |u| u.permit( :email, :password, :password_confirmation) }
      devise_parameter_sanitizer.for(:sign_in) { |u| u.permit( :email, :password) }
      devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:name, :email, :password, :password_confirmation) }
    end
end
