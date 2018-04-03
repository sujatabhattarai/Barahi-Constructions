class CreateEquipment < ActiveRecord::Migration[5.1]
  def change
    create_table :equipment do |t|
      t.string :name
      t.string :type
      t.string :make
      t.string :model
      t.string :serial_num
      t.string :mfd
      t.string :vendor
      t.integer :purchase_price
      t.string :owner
      t.timestamps
    end
  end
end
