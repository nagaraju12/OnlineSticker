class CreateLineitems < ActiveRecord::Migration
  def change
    create_table :lineitems do |t|
     
      t.integer :sticker_id
      t.integer :cart_id
      t.decimal  :unit_price,:precision => 7, :scale => 2
      t.timestamps null: false
    end
  end
end
