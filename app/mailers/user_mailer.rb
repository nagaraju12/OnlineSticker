class UserMailer < ApplicationMailer
	default from: 'notifications@example.com'
 
  def welcome_email(user)
    @user = user
    @url  = 'http://example.com/login'
    mail(to: @user.email, subject: 'Welcome to My Awesome Site')
  end
    def contact_email(user)
    @user = user
    @url  = 'http://onlinesticker.herokuapp.com/#'
    mail(to: @user.email, subject: 'Welcome to My Awesome Site')
  end
end
