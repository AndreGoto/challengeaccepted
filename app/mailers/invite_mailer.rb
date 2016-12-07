class InviteMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.invite_mailer.welcome.subject
  #
=begin
  def welcome(user)
    @user = user
    mail(to: @user.email, subject: 'Welcome to Le Wagon')
  end
=end
  def welcome(sender, email)
    mail(to: email, subject: 'Hi, #{sender} invites you to a challenge!')
  end

end
