class OrdersController < ApplicationController

  def index
    @order = Order.new
  end

  def create
    @oder = Order.new(order_params)
    if @order.valid?
      pay_item
      @order.save
      redirect_to root_path
    else
      render :index
    end
  end

  private

  def order_params
    params.require(:order).permit(:price).merge(user_id: current_user.id, music_id: params[:music_id], token: params[:token])
  end

end
