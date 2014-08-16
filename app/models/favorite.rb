class Favorite < ActiveRecord::Base
	belongs_to :eatery
	belongs_to :user

	validates :eatery_id, presence: true, uniqueness: { case_sensitive: false}
end
