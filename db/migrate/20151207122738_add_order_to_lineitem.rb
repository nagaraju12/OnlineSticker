class AddOrderToLineitem < ActiveRecord::Migration
  def change
    add_reference :lineitems, :order, index: true, foreign_key: true
  end
end
