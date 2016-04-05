class UploadsController < ApplicationController
  skip_before_filter :verify_authenticity_token
  def new
    @upload = Upload.new

  end
  def index
    @uploads = Upload.all

  end
  def create
    @upload = current_user.uploads.new(image: params[:file])
    if @upload.save!
      respond_to do |format|
        format.json{ render :json => @upload }
        # render json: @upload.to_json
      end
  end
end
  # private
  # def upload_params
  #   params.require(:upload).permit(:image,:user_id)
  # end
end
