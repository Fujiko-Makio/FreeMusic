class OrdersController < ApplicationController

  def index
    @order = Order.new
  end

  def create
    @oder = Order.new(order_params)
    @order.save
    return 
  end

  private

  def order_params
    params.require(:order).permit(:price)
  end

end
