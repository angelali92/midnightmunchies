class Eatery < ActiveRecord::Base
	has_many :favorites
	has_many :users, through: :favorites
	belongs_to :users
end
