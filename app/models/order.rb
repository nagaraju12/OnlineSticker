class Order < ActiveRecord::Base
	has_many :sticker
	has_many :cart
	has_many :lineitem
	mount_uploader :attachment, AttachmentUploader 
end
