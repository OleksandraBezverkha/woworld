class Users::SessionsController < Devise::SessionsController
  skip_before_filter :verify_authenticity_token, :only => [:destroy, :create]
# before_filter :configure_sign_in_params, only: [:create]

# GET /resource/sign_in
  def new
    super
  end

# POST /resource/sign_in
  def create
    resource = warden.authenticate!(:scope => resource_name, :recall => :failure)
    sign_in_and_redirect(resource_name, resource)
    respond_to do |format|
      format.js
    end
  end

  def sign_in_and_redirect(resource_or_scope, resource=nil)
    scope = Devise::Mapping.find_scope!(resource_or_scope)
    resource ||= resource_or_scope
    sign_in(scope, resource) unless warden.user(scope) == resource
  end

# DELETE /resource/sign_out
  def destroy
    Devise.sign_out_all_scopes ? sign_out : sign_out(resource_name)

    respond_to do |format|
      format.js {}
    end
  end
  end