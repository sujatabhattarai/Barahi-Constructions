class CustomersController < ApplicationController
  def new
    @customer = Customer.new
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

  def show
    @customer = Customer.find(params[:id])
  end

  private
  def customer_params
    params.require(:customer).permit(:full_name, :phn_num, :address, :email)
  end
end