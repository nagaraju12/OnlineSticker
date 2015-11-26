class Contact < ActiveRecord::Base
	validates  :email, :phone, :message, presence: true
 validates_uniqueness_of :name
has_many :users
def self.search(search)
  # Title is for the above case, the OP incorrectly had 'name'
  where("name LIKE ?", "%#{search}%")
end

end