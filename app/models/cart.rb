class Cart < ActiveRecord::Base
	has_many :stickers
  has_many :line_items, dependent: :destroy
end
