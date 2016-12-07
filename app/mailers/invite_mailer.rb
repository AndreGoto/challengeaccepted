class InviteMailer < ApplicationMailer

  def welcome(sender, email)
    @sender = sender
    mail(to: email) do |format|
      format.html { render 'welcome.html.erb' }
    end
  end

end
