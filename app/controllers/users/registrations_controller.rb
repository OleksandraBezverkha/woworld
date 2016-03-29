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
    super
  end

  # DELETE /resource
  def destroy
    super
  end
  def cancel
    super
  end

  protected

  def sign_up(resource_name, resource)
    sign_in(resource_name, resource)
  end

end