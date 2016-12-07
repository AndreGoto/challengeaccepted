class InviteMailer < ApplicationMailer

  def welcome(sender, email, challenge_id)
    @sender = sender
    @challenge_id = challenge_id
    mail(to: email) do |format|
      format.html { render 'welcome.html.erb' }
    end
  end

end
