class OrdersController < ApplicationController

  before_action :set_order, only: [:show, :edit, :update, :destroy]

  def index
    @orders = Order.all
  end

  def new
    @order = Order.new
  end

  def edit
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
    if @order.update(order_params)
      flash[:success] = "The order was successfully updated"
      redirect_to order_path(@order)
    else
      render 'edit'
    end
  end

  def show

  end

  def destroy
    @order.destroy
    flash[:danger] = "The order was successfully deleted"
    redirect_to orders_path
  end

  private
    def set_order
      @order = Order.find(params[:id])
    end
    def order_params
      params.require(:order).permit(:order_date, :duration, :equipment)
    end

end