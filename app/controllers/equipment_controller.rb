class EquipmentController < ApplicationController

  def index
    @equipments = Equipment.all
  end

  def new
    @equipment = Equipment.new
  end

  def edit
    @equipment = Equipment.find(params[:id])
  end

  def create
    @equipment = Equipment.new(equipment_params)
    if @equipment.save
      flash[:success] = "New equipment was successfully added to the equipment table"
      redirect_to equipment_path(@equipment)
    else
      render 'new'
    end
  end

  def update
    @equipment = Equipment.find(params[:id])
    if @equipment.update(equipment_params)
      flash[:success] = "The equipment was successfully updated"
      redirect_to equipment_path(@equipment)
    else
      render 'edit'
    end
  end

  def show
    @equipment = Equipment.find(params[:id])
  end

  def destroy
    @equipment = Equipment.find(params[:id])
    @equipment.destroy
    flash[:danger] = "The equipment was successfully deleted"
    redirect_to equipment_index_path
  end

  private
    def equipment_params
      params.require(:equipment).permit(:name, :equip_type, :make, :model, :serial_num,
                      :mfd, :vendor, :purchase_price, :owner)
    end
end