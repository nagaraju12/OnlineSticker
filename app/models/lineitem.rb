class Lineitem < ActiveRecord::Base
	belongs_to :sticker
  belongs_to :cart
   Quantity = ["male","female"]
 def total_price
		sticker.price * quantity
	end

end
