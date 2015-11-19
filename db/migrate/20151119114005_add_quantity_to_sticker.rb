class AddQuantityToSticker < ActiveRecord::Migration
  def change
  	  add_column :stickers, :quantity, :integer, default: 1
  end
end
