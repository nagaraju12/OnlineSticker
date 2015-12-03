class CreateLineitems < ActiveRecord::Migration
  def change
    create_table :lineitems do |t|
      t.references :sticker, index: true, foreign_key: true
      t.belongs_to :cart, index: true, foreign_key: true
      t.integer :sticker_id
      t.integer :cart_id
      t.decimal  "unit_price",         :precision => 7, :scale => 2
      t.timestamps null: false
    end
  end
end
