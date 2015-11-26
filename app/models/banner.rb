class Banner < ActiveRecord::Base
	has_many :images, :as => :imagable
	 validates_uniqueness_of :name
	belongs_to :category
	accepts_nested_attributes_for :images, :allow_destroy => true, :reject_if=>:all_blank
has_attached_file :image, styles: { medium: "100x100>", thumb: "100x100>"  }
end
