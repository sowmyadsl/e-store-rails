class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

private
  def product_params
    # Use strict parameters, replace placeholder info below with your class' actual attributes
    params.require(:product).permit(:name, :description, :price, :image)
  end
end
