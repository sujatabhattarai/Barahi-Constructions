class DeleteColumnEquipment < ActiveRecord::Migration[5.1]
  def change
    remove_column :equipment, :type
    add_column :equipment, :equip_type, :string
  end
end
