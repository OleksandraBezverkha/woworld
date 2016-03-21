class PagesController < ApplicationController
  def home
    @uploads=Upload.all
  end
end
