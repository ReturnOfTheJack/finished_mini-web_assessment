class User < ApplicationRecord
	validates :name, presence: true

	#expression to verify if an email is valid
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :email, presence: true, length: { maximum: 255 },
			  format: { with: VALID_EMAIL_REGEX },
			  uniqueness: { case_sensitive: false }
	#ensuring that that the email is unique regardless of the case

	has_secure_password
	validates :password, presence: true, length: { minimum: 12 }
end