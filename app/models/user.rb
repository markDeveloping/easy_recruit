class User < ActiveRecord::Base
	validates :firstname, presence: true
	validates :lastname, presence: true
	validates :email, presence: true
	validates :email_confirmation, presence: true
	has_secure_password
	validates :password_digest_confirmation, presence: true
	validates :email, confirmation: true
	validates :password_digest, confirmation: true
end
