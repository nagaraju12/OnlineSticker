class Sticker < ActiveRecord::Base
	has_many :images, :as => :imagable
validates :name, :description, :price,  :category_id, presence: true
has_many :users
Quantity = ["1","2", "3","4", "5" ]
	belongs_to :category
	accepts_nested_attributes_for :images, :allow_destroy => true, :reject_if=>:all_blank
has_attached_file :image, styles: { medium: "100x100>", thumb: "100x100>"  }
end

def self.search(search)
  if search
    find(:all, :conditions => ['name LIKE ?', "%#{search}%"])
  else
    find(:all)
  end
end