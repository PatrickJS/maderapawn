class HomeController < ApplicationController
  def index
  end

  def about
  end

  def contact
  end

  def sitemap
  end

  def services
  end

  def send_contact
    UserMailer.contact(params)
    redirect_to "/contact", alert: "Email has been sent"
  end
end
