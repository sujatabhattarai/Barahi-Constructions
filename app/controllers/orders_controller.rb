class OrdersController < ApplicationController

  def index
    @orders = Order.all
  end

  def new
    @order = Order.new
  end

  def edit
    @order = Order.find(params[:id])
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

  def update
    @order = Order.find(params[:id])
    if @order.update(order_params)
      flash[:success] = "The order was successfully updated"
      redirect_to order_path(@order)
    else
      render 'edit'
    end
  end

  def show
    @order = Order.find(params[:id])
  end

  def destroy
    @order = Order.find(params[:id])
    @order.destroy
    flash[:danger] = "The order was successfully deleted"
    redirect_to orders_path
  end

  private
  def order_params
    params.require(:order).permit(:order_date, :duration, :equipment)
  end

end