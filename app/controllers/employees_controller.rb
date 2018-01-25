class EmployeesController < ApplicationController
  before_action :set_employee, only: [:show, :edit, :update, :destroy]

  # GET /employees
  # GET /employees.json
  def index
    @employees = Employee.all
  end



  # GET /employees/new
  def new
    @employee = Employee.new
  end

  # GET /employees/1/edit
  def edit
  end

  # POST /employees
  # POST /employees.json
  def create
    @employee = Employee.new(employee_params)

      if @employee.save
        flash[:success] = "New employee was successfully added to the employee table"
        redirect_to employee_path(@employee)
      else
        render 'new'
      end
  end

  def show
  end

  def update
    if @employee.update(employee_params)
      flash[:success] = "Employee information was successfully updated"
      redirect_to employee_path(@employee)
    else
      render 'edit'
    end
  end

  def destroy
    @employee.destroy
    flash[:danger] = "Employee was successfully deleted"
    redirect_to employees_path
  end

  private

    def set_employee
      @employee = Employee.find(params[:id])
    end

    def employee_params
      params.require(:employee).permit(:first_name, :last_name, :phn_num, :address, :email)
    end
end
