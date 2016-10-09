class User < ActiveRecord::Base
	attr_accessor :remember_token, :activation_token
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

	# Returns the hash digest of the given string.
  def User.digest(string)
    cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
                                                  BCrypt::Engine.cost
    BCrypt::Password.create(string, cost: cost)
  end

	# Returns a random token.
  def User.new_token
    SecureRandom.urlsafe_base64
  end

	# Returns true if the given token matches the digest.
  def authenticated?(attribute, token)
    digest = send("#{attribute}_digest")
    return false if digest.nil?
    BCrypt::Password.new(digest).is_password?(token)
  end

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
