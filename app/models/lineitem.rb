class Lineitem < ActiveRecord::Base
	belongs_to :sticker
  belongs_to :cart

end
