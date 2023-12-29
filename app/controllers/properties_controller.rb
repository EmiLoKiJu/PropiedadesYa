class PropertiesController < ApplicationController
  before_action :authenticate_user!, only: %i[create edit update destroy new]
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
    @property.user = current_user
    if @property.save
      redirect_to properties_url, notice: success_message('created')
    else
      puts "Errors: #{@property.errors.full_messages}"  # or Rails.logger.debug
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
      :title, :rent, :price, :dollars, :commune_id, :address, :area, :rooms, :bathrooms, :description, pictures: []
    )
  end

  def set_property
    @property = Property.find(params[:id])
  end
end
