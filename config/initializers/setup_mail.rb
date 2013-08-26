require 'development_mail_interceptor'

ActionMailer::Base.default_url_options[:host] = "localhost:3000" if Rails.env.development?
ActionMailer::Base.register_interceptor(DevelopmentMailInterceptor)
    if Rails.env.development?

ActionMailer::Base.default_url_options[:host] = "https://shielded-spire-5845.herokuapp.com" if Rails.env.production?

