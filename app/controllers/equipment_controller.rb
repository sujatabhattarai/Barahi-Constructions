class EquipmentController < ApplicationController

  def new
    @equipment = Equipment.new
  end

  def create
    @equipment = Equipment.new(equipment_params)
    @equipment.save
    redirect_to equipment_show(@equipment)
  end

  def show

  end

  private
    def equipment_params
      params.require(:equipment).permit(:name, :equip_type, :make, :model, :serial_num,
                      :mfd, :vendor, :purchase_price, :owner)
    end
end