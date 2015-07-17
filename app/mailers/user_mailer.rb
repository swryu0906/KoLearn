class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.signup_welcome.subject
  #
  default from: "swryu0906@gmail.com"

  def signup_welcome(user)
  	@user = user
    @greeting = "Welcome to KoLearn.com!"

    mail to: @user.email, subject: "Welcome to KoLearn"
  end
end
