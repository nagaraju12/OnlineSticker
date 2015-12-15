class AddOrderToLineitem < ActiveRecord::Migration
  def change
  	add_reference :lineitems, :order, foreign_key: true
  end
end
