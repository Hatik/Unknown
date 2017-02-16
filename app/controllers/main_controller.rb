class MainController < ApplicationController
  def index
    @uploads = Upload.all
  end
end
