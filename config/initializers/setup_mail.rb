require 'development_mail_interceptor'

if Rails.env.development?
  ActionMailer::Base.register_interceptor(DevelopmentMailInterceptor)

end