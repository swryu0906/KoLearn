class User < ActiveRecord::Base
	has_many :courses, dependent: :destroy
	has_many :joins, dependent: :destroy
	has_many :events, through: :joins, dependent: :destroy

	validates_presence_of :first_name, :last_name, :email

	validates :first_name, length: { minimum: 1, maximum: 30 }
	validates :last_name, length: { minimum: 1, maximum: 30 }

	validates :email, 
				uniqueness: true,
				format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i }
	
	has_secure_password
	validates :password, 
				confirmation: true,
				length: { minimum: 4, maximum: 30 }

	after_initialize :init
	before_save :downcase_fields
	after_create :signup_welcome_notification

	private

	def init
		self.image ||= "http://www.riskid.nl/assets/testimonials/user-3995d1ed5f9b6ea6ef9c7bc9ead47415.jpg"
	end

	def downcase_fields
		self.first_name = first_name.downcase
		self.last_name = last_name.downcase
		self.email = email.downcase
		self.image = image.downcase
	end

	def signup_welcome_notification
      UserMailer.signup_welcome(self).deliver
   	end
end