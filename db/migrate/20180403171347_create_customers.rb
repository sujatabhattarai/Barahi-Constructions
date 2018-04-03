class CreateCustomers < ActiveRecord::Migration[5.1]
  def change
    create_table :customers do |t|
      t.string :full_name
      t.text :address
      t.string :phn_num
      t.text :email
    end
  end
end
