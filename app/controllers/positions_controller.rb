class PositionsController < ApplicationController
  before_action :set_position, only: [:edit, :update, :destroy]
  before_action :authenticate_admin!

  def index
    @positions = Position.all
  end

  def new
    @position = Position.new
  end

  def update
    if @position.update(position_params)
      redirect_to @position, notice: 'Position was successfully updated.'
    else
      render :edit
    end
  end

  private

  def set_position
    @position = position.find(params[:id])
  end

  # strong params
  def position_params
    params.require(:position).permit(
      :name,
      :permanent
    )
  end
end
