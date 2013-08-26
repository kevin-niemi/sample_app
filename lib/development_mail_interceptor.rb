class DevelopmentMailInterceptor
  def self.delivering_email(message)
    message.subject = "To: #{message.to}, #{message.subject}"
    message.to = "kevin.niemi@gmail.com"
  end
end