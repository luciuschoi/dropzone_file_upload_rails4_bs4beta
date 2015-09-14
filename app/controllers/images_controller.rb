class ImagesController < ApplicationController
  def index
    @images = Image.order(created_at: :desc).paginate(:page => params[:page], :per_page => 30)
    @image = Image.new
  end

  def create
    @image = Image.new(image_params)

    if @image.save
      render json: { message: "success", fileID: @image.id }, status: 200
    else
      render json: { error: @image.errors.full_messages.join(',')}, status: 400
    end
  end

  private
  def image_params
    params.require(:image).permit(:avatar)
  end
end