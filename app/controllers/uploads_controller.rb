class UploadsController < ApplicationController
  before_action :authenticate_user!

  before_action :set_image, only: [:destroy]

  def index
    if logged_in? || user_signed_in?
      @images = Image.all
    else
      #not authorized
    end
  end

  def create
    @errors = []
    @image = Image.new
    @image.file = params[:image]
    if @image.valid?
      @image.save!
    else
      @errors << @image.errors.full_messages
    end
    if @errors.any?
      #Show errors
    else
      #Show success of creation
    end
  end

  def destroy
    if @image
      FileUtils.rm_rf('public/' + @image.file.url)
      @image.destroy!
      #Show success of deletion
    else
      #Show fail
    end
  end

  private
  def set_image
    @image = Image.find(id: params[:id])
  end
end
