class UploadsController < ApplicationController
  def new
    @upload = Upload.new

  end

  def create
    @upload = current_user.uploads.create(image: params[:file])
    if @upload.save!
      p "popa"
      respond_to do |format|
        format.json{ render :json => @upload }
        p "ololo"

    # else
    #   #  you need to send an error header, otherwise Dropzone
    #   #  will not interpret the response as an error:
    #   render json: { error: @upload.errors.full_messages.join(',')}, :status => 400
    end
  end
end
  # private
  # def upload_params
  #   params.require(:upload).permit(:image,:user_id)
  # end
end
