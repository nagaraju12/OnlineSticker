class Sticker < ActiveRecord::Base
	has_many :images, :as => :imagable
validates :description,:category_id, presence: true
 validates_uniqueness_of :name
has_many :users
 #validates :status, :presence => true

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