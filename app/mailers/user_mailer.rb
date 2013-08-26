class UserMailer < ActionMailer::Base
  default from: "no-reply@knmgsolutions.com"

  def welcome_email(user)
    @user = user
    mail(to: "#{user.name} <#{user.email}>", subject: "Welcome to the MicroPost Site!")
  end
end
