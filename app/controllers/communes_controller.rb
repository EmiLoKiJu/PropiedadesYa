class CommunesController < ApplicationController
  def show
    @commune = Commune.find(params[:id])
  end
end
