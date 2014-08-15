class User < ActiveRecord::Base
	has_many :favorites
	has_many :eateries, through: :favorites
	belongs_to :eateries
end
