class Contact < ActiveRecord::Base

def self.search(search)
  # Title is for the above case, the OP incorrectly had 'name'
  where("name LIKE ?", "%#{search}%")
end

end