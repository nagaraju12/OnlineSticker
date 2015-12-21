class Order < ActiveRecord::Base
	has_many :sticker
	has_many :cart
	belongs_to :lineitem
	mount_uploader :attachment, AttachmentUploader 
end
