class CustomersController < ApplicationController

  before_action :set_customer, only: [:show, :edit, :update, :destroy]

  def index
    @customers = Customer.all
  end

  def new
    @customer = Customer.new
  end

  def edit

  end

  def create
    @customer = Customer.new(customer_params)
    if @customer.save
      flash[:success] = "New customer was successfully added to the customer table"
      redirect_to customer_path(@customer)
    else
      render 'new'
    end

  end

  def update
    if @customer.update(customer_params)
      flash[:success] = "The customer was successfully updated"
      redirect_to customer_path(@customer)
    else
      render 'edit'
    end
  end

  def show

  end

  def destroy
    @customer.destroy
    flash[:danger] = "The customer was successfully deleted"
    redirect_to customers_path
  end

  private
  def set_customer
    @customer = Customer.find(params[:id])
  end

  def customer_params
    params.require(:customer).permit(:full_name, :phn_num, :address, :email)
  end
end