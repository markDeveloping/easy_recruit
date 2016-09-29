class User < ActiveRecord::Base
	before_save :downcase_email
	before_create :create_activation_digest

	belongs_to :department
	has_many :access_jobs
	has_many :jobs, :through => :access_jobs
	before_save { email.downcase! }
	validates :firstname, presence: true, length: { maximum: 50 }
	validates :lastname, presence: true, length: { maximum: 50 }
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :email, presence: true, confirmation: true, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }
	validates :email_confirmation, presence: true
	validates :department_id, presence: true
	has_secure_password
	validates :password, length: { minimum: 6 }

	private
	#sets email to lowercase
	def downcase_email
		self.email = email.downcase
	end

	# Creates and assigns the activation token and digest.
    def create_activation_digest
      self.activation_token  = User.new_token
      self.activation_digest = User.digest(activation_token)
    end
end
