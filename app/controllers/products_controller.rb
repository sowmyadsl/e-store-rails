class ProductsController < ApplicationController
  def index
    @products = Product.all
    @order_item = current_order.order_items.new
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
  @products = Product.new
  end

  def create
    @product = Product.find(params[:id])
    if @product.save
    flash[:notice] = "Product successfully added!"
      redirect_to  products_path
    else
      render :new
    end
  end

private
  def product_params
    # Use strict parameters, replace placeholder info below with your class' actual attributes
    params.require(:product).permit(:name, :description, :price, :image)
  end
end
