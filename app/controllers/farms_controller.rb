class FarmsController < ApplicationController
  before_action :set_farm, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_admin!

  def index
    @farms = Farm.all
  end

  def new
    @farm = Farm.new
  end

  def update
    if @farm.update(farm_params)
      redirect_to @farm, notice: 'Farm was successfully updated.'
    else
      render :edit
    end
  end

  private

  def set_farm
    @farm = Farm.find(params[:id])
  end

  # strong params
  def farm_params
    params.require(:farm).permit(
      :name,
      :location,
      :website,
      :description,
      :avatar
    )
  end
end
