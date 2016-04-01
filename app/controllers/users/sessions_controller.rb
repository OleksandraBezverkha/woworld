class Users::SessionsController < Devise::SessionsController
  skip_before_filter :verify_authenticity_token, :only => [:destroy, :create]
# before_filter :configure_sign_in_params, only: [:create]

# GET /resource/sign_in
  def new
    super
  end

  def create

    # build_resource
    @par = [params[:user][:email]]
    resource = User.find_for_database_authentication(:email => params[:email])
    return @error = t(:Invalid_email_or_password) unless resource

    if resource.valid_password?(params[:password])
      resource.ensure_authentication_token!
      respond_to do |format|
        format.js
      end
    end
  end

  def destroy
    Devise.sign_out_all_scopes ? sign_out : sign_out(resource_name)

    respond_to do |format|
      format.js {}
    end
  end

end