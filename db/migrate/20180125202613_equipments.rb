class Equipments < ActiveRecord::Migration[5.1]
  def change
      create_table :euipments do |t|
        t.string :name
        t.integer :count
      end
  end
end
