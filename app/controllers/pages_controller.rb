class PagesController < ApplicationController
  def home
    @uploads=Upload.all
    @messages=Message.all
  end
end
