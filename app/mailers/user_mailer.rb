class UserMailer < ActionMailer::Base

  def contact(options)
    @options = options

    mail(to: "suzy@maderapawn.com", subject: "#{@options[:name]} stuff", from: "no-reply@maderapawn.com").deliver

    # mail(to: "gary@maderapawn.com", subject: "#{@options[:name]} stuff", from: "no-reply@maderapawn.com").deliver
  end
end
