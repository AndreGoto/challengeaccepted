class Invite < ApplicationRecord
  after_save :send_invite
  # before_save :invites
  belongs_to :challenge

  private

  def send_invite
    InviteMailer.welcome(challenge, challenge.invites).deliver_now
    #redirect_to challenge_url(challenge.id)
  end
end
