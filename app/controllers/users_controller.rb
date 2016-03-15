class UsersController < ApplicationController
  before_action :authenticate_admin!

  def show
    @user = User.find(params[:id])
  end

  private

  # strong params
  def user_params
    params.require(:user).permit(
      :name,
      :bio
    )
  end
end
