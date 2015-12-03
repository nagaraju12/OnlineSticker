class Lineitem < ActiveRecord::Base
	belongs_to :sticker
  belongs_to :cart
 def total_price
		sticker.price * quantity
	end

end
