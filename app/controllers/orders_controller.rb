class OrdersController < ApplicationController
  def new
    @order = Order.new
  end

  def create
    @order = Order.new(order_params)
    if @order.save
      flash[:success] = "New order was successfully added to the orders table"
      redirect_to order_path(@order)
    else
      render 'new'
    end

  end

  def show
    @order = Order.find(params[:id])
  end

  private
  def order_params
    params.require(:order).permit(:order_date, :duration, :equipment)
  end
end