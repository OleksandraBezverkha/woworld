class Users::RegistrationsController < Devise::RegistrationsController
  skip_before_filter :verify_authenticity_token, :only => [:destroy, :create]

  def new
    super
  end

  # POST /resource
  def create
    build_resource(sign_up_params)

    respond_to do |format|
      resource.save
      @error = resource.errors.full_messages
      @par=[sign_up_params[:email]]
      yield resource if block_given?
      if resource.persisted?
        if resource.active_for_authentication?
          sign_up(resource_name, resource)
          format.js
        else
          expire_data_after_sign_in!
          format.js
        end
      else
        clean_up_passwords resource
        set_minimum_password_length
        format.js
      end
    end
  end

  # GET /resource/edit
  def edit
    super
  end

  # PUT /resource
  def update
    if current_user.valid?
      current_user.update(account_update_params)
    end
    return @error = 'Email is invalid' unless current_user.valid?
  end
  def account_update_params
    params.require(:user).permit(:email, :name)
  end
  # DELETE /resource
  def destroy
    super
  end
  def cancel
    super
  end

  protected

  def update_resource(resource, params)
    resource.update_without_password(params)
  end
  def sign_up(resource_name, resource)
    sign_in(resource_name, resource)
  end

end