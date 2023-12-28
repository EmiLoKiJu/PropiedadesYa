class ImgsController < ApplicationController
  def index
    @imgs = Img.all
  end

  def show
    @img = Img.find(params[:id])
  end

  def new
    @img = Img.new
  end

  def create
    @img = Img.new(img_params)
    if @img.save
      redirect_to @img, notice: 'Image was successfully created.'
    else
      render :new
    end
  end

  private

  def img_params
    params.require(:img).permit(:title, pictures: [])
  end
end
