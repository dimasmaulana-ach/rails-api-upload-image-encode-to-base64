require 'mini_magick'

class ImagesController < ApplicationController
  def index
    @images = Image.all
    render json: @images
  end

  def show
    @image = Image.find(params[:id])
    render json: @image
  end

  def create
    @image = Image.new(image: params[:image])
    @image.url = @image.image.url
    @image.base64 = @image.to_base64
    if @image.save
      render json: @image, status: :created
    else
      render :new
    end
  end

  def update
  end

  def delete
  end

  # private

  # def resize_image(image)
  #   image = MiniMagick::Image.open(image)
  #   image.resize '300x300'
  #   image
  # end

end
