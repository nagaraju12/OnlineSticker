class CreateCarts < ActiveRecord::Migration
  def change
    create_table :carts do |t|
    	t.datetime :purchased_at
      t.integer :sticker_id

      t.timestamps null: false
    end
  end
end
