require 'development_mail_interceptor'

if Rails.env.development?
  ActionMailer::Base.default_url_options[:host] = "localhost:3000"
  ActionMailer::Base.register_interceptor(DevelopmentMailInterceptor)

end