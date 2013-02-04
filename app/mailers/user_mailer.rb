class UserMailer < ActionMailer::Base

  def contact(options)
    @options = options
    if @options[:email] == ""
    @contact_email = "no-reply@maderapawn.com"
    else
    @contact_email = @options[:email]
    end
    @raw_phone_number = @options[:phone].gsub(/[^0-9]/, "")

    mail(to: "suzy@maderapawn.com", subject: "#{@options[:subject]} from #{@options[:name]}", from: "#{@contact_email}").deliver

    # mail(to: "gary@maderapawn.com", subject: "#{@options[:name]} stuff", from: "no-reply@maderapawn.com").deliver
  end
end
