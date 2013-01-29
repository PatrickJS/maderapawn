class UserMailer < ActionMailer::Base

  def contact(options)
    @options = options
    mail(to: "contact@maderapawn.com", subject: "#{@options[:name]} stuff", from: "no-reply@maderapawn.com").deliver
  end
end
