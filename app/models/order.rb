class Order < ActiveRecord::Base
	has_many :sticker
	has_many :cart
	mount_uploader :attachment, AttachmentUploader 
end
