class AccountsController < ApplicationController
  def new
    @account = Account.new
  end

  def create
    @account = Account.new(account_params)
    if @account.save
      flash[:success] = "New data was successfully added to the account table"
      redirect_to account_path(@account)
    else
      render 'new'
    end

  end

  def show
    @account = Account.find(params[:id])
  end

  private
  def account_params
    params.require(:account).permit(:customer_name, :total_amount, :amount_paid, :amount_due)
  end
end