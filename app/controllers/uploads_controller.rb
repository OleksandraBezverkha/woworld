class UploadsController < ApplicationController
  def new
    @upload = Upload.new

  end

  def create
    @upload = Upload.create(upload_params)
    if @upload.save
      respond_to do |format|
        format.json{ render :json => @upload }
        end
    # else
    #   #  you need to send an error header, otherwise Dropzone
    #   #  will not interpret the response as an error:
    #   render json: { error: @upload.errors.full_messages.join(',')}, :status => 400
    end
  end

  private
  def upload_params
    params.require(:upload).permit(:image)
  end
end
