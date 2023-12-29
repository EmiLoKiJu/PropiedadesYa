class PropertiesController < ApplicationController
  load_and_authorize_resource
  before_action :authenticate_user!, only: %i[create edit update destroy new]
  before_action :set_property, only: %i[show edit update destroy]
  
  def index
    filtered = Property.where("title LIKE ?", "%#{params[:filter]}%").all
    @pagy, @properties = pagy(filtered.all, items: 3)
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
      redirect_to property_url(@property), notice: success_message('created')
    else
      flash[:notice] = "Errors: #{@property.errors.full_messages}"
      redirect_to new_property_path
    end
  end

  def edit
    @property
  end

  def update
    if @property.update(property_params)
      redirect_to properties_url, notice: success_message('updated')
    else
      flash[:notice] = "Errors: #{@property.errors.full_messages}"
      redirect_to edit_property_path(@property)
    end
  end

  def destroy
    @property.destroy
    redirect_to properties_url, notice: success_message('deleted')
  end

  private

  def success_message(action)
    "Property was successfully #{action}."
  end

  def property_params
    params.require(:property).permit(
      :title, :rent, :price, :dollars, :commune_id, :address, :area, :rooms, :bathrooms, :description, pictures: []
    )
  end

  def set_property
    @property = Property.find(params[:id])
  end
end
