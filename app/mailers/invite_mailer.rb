class InviteMailer < ApplicationMailer

  #def welcome(sender, email, challenge_id)
  def welcome (challenge, invites)
    @challenge = challenge

    invites.each do |invite|

      mail(to: invite.guest_email) do |format|
        format.html { render 'welcome.html.erb' }
      end

    end
  end

end
