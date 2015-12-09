class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :name
      t.string :attachment
      t.string :phone
      t.text :address
      t.string :zip
      t.string :vehicle_no
      t.string :vehicle_model
      t.string :vehicle_make
      t.string :email

      t.timestamps null: false
    end
  end
end
