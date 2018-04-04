class CustomersController < ApplicationController

  def index
    @customers = Customer.all
  end

  def new
    @customer = Customer.new
  end

  def edit
    @customer = Customer.find(params[:id])
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
    @customer = Customer.find(params[:id])
    if @customer.update(customer_params)
      flash[:success] = "The customer was successfully updated"
      redirect_to customer_path(@customer)
    else
      render 'edit'
    end
  end

  def show
    @customer = Customer.find(params[:id])
  end

  def destroy
    @customer = Customer.find(params[:id])
    @customer.destroy
    flash[:danger] = "The customer was successfully deleted"
    redirect_to customers_path
  end

  private
  def customer_params
    params.require(:customer).permit(:full_name, :phn_num, :address, :email)
  end
end