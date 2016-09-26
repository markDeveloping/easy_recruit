class User < ActiveRecord::Base
	belongs_to :department
	has_many :access_jobs
	has_many :jobs, :through => :access_jobs
	before_save { email.downcase! }
	validates :firstname, presence: true, length: { maximum: 50 }
	validates :lastname, presence: true, length: { maximum: 50 }
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :email, presence: true, confirmation: true, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }
	validates :email_confirmation, presence: true
	has_secure_password
	validates :password, length: { minimum: 6 }
end
