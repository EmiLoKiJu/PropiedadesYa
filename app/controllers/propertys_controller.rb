class PropertysController < ApplicationController
  before_action :set_property, only: %i[show update destroy]
  
  def index
    @properties = Property.all
  end

  def show
  end

  def new
    @property = Property.new
  end

  def create
    @property = Property.new(property_params)
    if @property.save
      redirect_to @property, notice: success_message('created')
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @property.update(property_params)
      redirect_to @property, notice: success_message('updated')
    else
      render :edit
    end
  end

  def destroy
    @property.destroy
    redirect_to properties_url, notice: success_message('deleted')
  end

  private

  def property_params
    params.require(:property).permit(
      :title, :rent, :price, :dollars, :commune_id, :address, :area, :rooms, :bathrooms, :description, images: []
    )
  end

  def set_property
    @property = Property.find(params[:id])
  end
end
