class User < ActiveRecord::Base
	has_many :favorites
	has_many :eateries, through: :favorites
	belongs_to :eateries

	has_secure_password

	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(?:\.[a-z\d\-]+)*\.[a-z]+\z/i
	
	before_save { self.email = email.downcase }
	validates :email, presence: true, format: { with: VALID_EMAIL_REGEX },
									  uniqueness: { case_sensitive: false}
	validates :password, length: { minimum: 6 }


	before_create :create_remember_token
	def User.new_remember_token
		SecureRandom.urlsafe_base64
	end

	def User.digest(token)
		Digest::SHA1.hexdigest(token.to_s)
	end

	private
		def create_remember_token
			self.remember_token = User.digest(User.new_remember_token)
		end
end
