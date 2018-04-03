class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.string :order_date
      t.string :duration
      t.string :equipment
    end
  end
end
