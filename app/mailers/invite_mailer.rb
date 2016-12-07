class InviteMailer < ApplicationMailer

  def welcome(sender, email)
    mail(to: email) do |format|
      format.html { render 'welcome.html.erb' }
    end
  end

end
