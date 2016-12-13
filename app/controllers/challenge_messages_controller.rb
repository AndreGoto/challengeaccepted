class ChallengeMessagesController < ApplicationController

  def create
    @challenge = Challenge.find(params[:challenge_id])
    @members = Member.where(user_id: current_user.id, challenge_id: params[:challenge_id], inative: false)
    @message = ChallengeMessage.new(challengemessage_params)
    @message.member_id = @members.first.id
    authorize @message
    if @message.save
      respond_to do |format|
        format.html { redirect_to challenge_path(@challenge) }
        format.js  # <-- will render `app/views/reviews/create.js.erb`
      end
    else
      respond_to do |format|
        format.html { render 'challenges/show' }
        format.js  # <-- idem
      end
    end
  end

  private

  def challengemessage_params
    params.require(:challenge_message).permit(:message)
  end
end
