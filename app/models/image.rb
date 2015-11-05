class Image < ActiveRecord::Base
	belongs_to :sticker, dependent: :destroy
	  belongs_to :imagable, :polymorphic => true
  has_attached_file :image, :styles => {:original => "170x170>",:default => "226x287!",:thumb => "96x96>"}

    validates_attachment_content_type :image, :content_type => %w(image/jpeg image/jpg)
end


