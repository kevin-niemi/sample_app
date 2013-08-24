class UserMailer < ActionMailer::Base
  default from: "no-reply@knmgsolutions.com"

  def welcome_email(user)
    @user = user
    @url = 'http://localhost:3000/signin'
    mail(to: @user.email, subject: "Welcome to the MicroPost Site!")
  end
end
