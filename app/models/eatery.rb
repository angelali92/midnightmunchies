class Eatery < ActiveRecord::Base
	
	has_many :favorites
	has_many :users, through: :favorites
	belongs_to :users
	 

	def self.search(search)
    if search
      #case insensitive
      where('name ILIKE ?', "%#{search}%")
    else
      all
    end
  end

end
