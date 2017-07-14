class CartsController < ApplicationController

  def show
    @order_items = current_order.order_items
    respond_to do |format|
      format.html { redirect_to products_url }
      format.js
    end
  end
end
