class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_order, :current_order_quantity, :reset_session

  def current_order
    if session[:order_id]
      Order.find(session[:order_id])
    else
      Order.new
    end
  end

  def current_order_quantity
    quantity = 0
    current_order.order_items.each do |item|
      quantity += item.quantity
    end
    return quantity
  end

  def reset_session
  @_request.reset_session
end

end
