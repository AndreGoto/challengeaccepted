class MembersController < ApplicationController
  def create
    @member = Member.new
    @member.user = current_user
    @member.challenge_id = params[:challenge_id].to_i
    authorize @member
    if @member.save
      flash[:notice] = "You're new member"
      redirect_to challenge_path(challenge)
    else
      redirect_to challenge_path(challenge)
    end
  end
end
