class CreateAccounts < ActiveRecord::Migration[5.1]
  def change
    create_table :accounts do |t|
      t.string :customer_name
      t.float :total_amount
      t.float :amount_paid
      t.float :amount_due
      t.timestamps
    end
  end
end
