class OrdersController < ApplicationController

  def index
    @order = Order.find(params[:music_id])
  end

  def create
    @order = Order.find(params[:music_id])
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

  def pay_item
    Payjp.api_key = ENV["PAYJP_SECRET_KEY"]
    Payjp::Charge.create(
      amount: @purchase.price,
      card: purchase_params[:token],
      currency: 'jpy'
    )
  end

end
