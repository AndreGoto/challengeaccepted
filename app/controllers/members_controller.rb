class MembersController < ApplicationController
  def create
    @member = Member.new
    @member.user = current_user
    @member.challenge_id = params[:challenge_id].to_i
    authorize @member
    if @member.save
      flash[:notice] = "You're new member"
      redirect_to challenge_path(params[:challenge_id])
    else
      redirect_to challenge_path(params[:challenge_id])
    end
  end

  def accept_request
    @member = Member.new
    @member.challenge_id = params[:challenge_id]
    @member.user_id      = params[:requested_user_id]
    request = ChallengeRequest.where(challenge_id: params[:challenge_id], user_id: params[:requested_user_id])
    authorize @member
    if @member.save && request.first.destroy
      flash[:notice] = "Aproved"
      redirect_to challenge_requests_path
    else
      flash[:alert] = "Try again"
      redirect_to challenge_requests_path
    end
  end

  def update
    member = Member.find(params[:id])
    authorize member
    flash[:alert] = "You left the challenge :/"
    member.inative = true
    redirect_to challenge_path(params[:challenge_id]) if member.save
  end
end
