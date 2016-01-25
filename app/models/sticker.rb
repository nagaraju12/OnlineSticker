class Sticker < ActiveRecord::Base
has_many :images, :as => :imagable
validates :description,:category_id, presence: true
validates_uniqueness_of :name
has_many :users

 #validates :status, :presence => true
	belongs_to :category
	accepts_nested_attributes_for :images, :allow_destroy => true, :reject_if=>:all_blank

 def self.search(search)
    if search.present?
     where('name LIKE ? ',"#{search}")
    else
      all
    end
  end
end