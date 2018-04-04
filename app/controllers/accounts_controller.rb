class AccountsController < ApplicationController

  def index
    @accounts = Account.all
  end

  def new
    @account = Account.new
  end

  def edit
    @account = Account.find(params[:id])
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

  def update
    @account = Account.find(params[:id])
    if @account.update(account_params)
      flash[:success] = "The account information was successfully updated"
      redirect_to account_path(@account)
    else
      render 'edit'
    end
  end

  def show
    @account = Account.find(params[:id])
  end

  def destroy
    @account = Account.find(params[:id])
    @account.destroy
    flash[:danger] = "Account was successfully deleted"
    redirect_to accounts_path
  end

  private
  def account_params
    params.require(:account).permit(:customer_name, :total_amount, :amount_paid, :amount_due)
  end
end