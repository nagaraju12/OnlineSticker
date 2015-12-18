class Sticker < ActiveRecord::Base
	has_many :images, :as => :imagable
validates :description,:category_id, presence: true
 validates_uniqueness_of :name
has_many :users
 #validates :status, :presence => true
Quantity = ["1","2","3","4","5"]
	belongs_to :category
	accepts_nested_attributes_for :images, :allow_destroy => true, :reject_if=>:all_blank

def 
	self.search(search)
  if search
    find(:all, :conditions => ['name LIKE ?', "%#{search}%"])
  else
    find(:all)
  end
end
end