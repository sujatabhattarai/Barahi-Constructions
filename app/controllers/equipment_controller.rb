class EquipmentController < ApplicationController

  def new
    @equipment = Equipment.new
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

  def show
    @equipment = Equipment.find(params[:id])
  end

  private
    def equipment_params
      params.require(:equipment).permit(:name, :equip_type, :make, :model, :serial_num,
                      :mfd, :vendor, :purchase_price, :owner)
    end
end