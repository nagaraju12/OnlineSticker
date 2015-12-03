class CombineItemsInCart < ActiveRecord::Migration
  def change
  	  	def up
# replace multiple items for a single product in a cart with a single item
Cart.all.each do |cart|
# count the number of each product in the cart
sums = cart.lineitems.group(:sticker_id).sum(:quantity)
sums.each do |sticker_id, quantity|
if quantity > 1
# remove individual items
cart.lineitems.where(sticker_id: sticker_id).delete_all
# replace with a single item
item = cart.lineitems.build(sticker_id: sticker_id)
item.quantity = quantity
item.save!
end
end
end
end
  end
  def down
# split items with quantity>1 into multiple items
LineItem.where("quantity>1").each do |lineitem|
# add individual items
lineitem.quantity.times do
LineItem.create cart_id: lineitem.cart_id,
sticker_id: lineitem.sticker_id, quantity: 1
end
# remove original item
lineitem.destroy
end
end

end
