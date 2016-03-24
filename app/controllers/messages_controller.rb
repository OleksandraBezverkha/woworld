class MessagesController < ApplicationController
  def index
    @messages = Message.all
    @message = Message.new
  end
  def new
    @message = Message.new

  end

  def create
    @message = Message.create(msg_params)
    @messages = Message.all
    if @message.save
      respond_to do |format|
        format.js
      end
    end
    end

  private
  def msg_params
    params.require(:message).permit(:msg)
  end
end