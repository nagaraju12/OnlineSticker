class Category < ActiveRecord::Base
	has_many :stickers
	has_many :banners
	has_many :images, :as => :imagable
accepts_nested_attributes_for :images, :allow_destroy => true, :reject_if=>:all_blank
has_attached_file :image, styles: { medium: "100x100>", thumb: "100x100>"  }


end
