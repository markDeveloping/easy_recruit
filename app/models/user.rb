class User < ActiveRecord::Base
	belongs_to :department
	before_save { email.downcase! }
	validates :firstname, presence: true, length: { maximum: 50 }
	validates :lastname, presence: true, length: { maximum: 50 }
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :email, presence: true, confirmation: true, format: { with: VALID_EMAIL_REGEX }
	validates :email_confirmation, presence: true
	has_secure_password
	validates :password_digest, confirmation: true, length: { minimum: 6 }
	validates :password_digest_confirmation, presence: true
end
