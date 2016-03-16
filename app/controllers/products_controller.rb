class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_admin!

  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def update
    if @product.update(product_params)
      redirect_to @product, notice: 'Product was successfully updated.'
    else
      render :edit
    end
  end

  private

  def set_product
    @product = product.find(params[:id])
  end

  # strong params
  def product_params
    params.require(:product).permit(
      :name,
      :description,
      :avatar
    )
  end
end
