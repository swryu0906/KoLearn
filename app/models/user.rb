class User < ActiveRecord::Base
	has_secure_password
	has_many :courses, dependent: :destroy
	has_many :joins, dependent: :destroy
	has_many :events, through: :joins, dependent: :destroy


	validates_presence_of :first_name, :last_name
	validates_length_of :password, minimum: 4

	after_save :signup_welcome_notification

	private

	def signup_welcome_notification
      UserMailer.signup_welcome(self).deliver
   	end

end
