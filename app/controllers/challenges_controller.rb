class ChallengesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_challenge, only: [:show, :edit, :update, :destroy, :invite, :send_invite]

  def index
    # @challenges = Challenge.all
    @challenges = policy_scope(Challenge)
  end

  def show
    @challenge_message = ChallengeMessage.new
    @members = Member.where(challenge_id: @challenge.id)
    user_challenge_messages = []
    @members.each do |member|
      user_challenge_messages << ChallengeMessage.where(member_id: member.id)
    end
    @challenge_messages = user_challenge_messages.flatten.sort_by { |k| k[:created_at] }
  end

  def new
    @challenge = Challenge.new
    authorize @challenge
  end

  def create
    @challenge = Challenge.new(challenge_params)
    @challenge.owner = current_user
    authorize @challenge
    if @challenge.save
      members = Member.new
      members.user_id = current_user.id
      members.challenge_id = @challenge.id
      if members.save
        redirect_to challenge_path(@challenge)
      else
        render :new
      end
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @challenge.update(challenge_params)
      flash[:notice] = "There you go! Your challenge is now updated."
      redirect_to challenge_path(@challenge)
    else
      render :edit
    end
  end

  def destroy
    @challenge.destroy
    redirect_to challenges_path
  end

  def invite
    authorize @challenge
    #this action generates the file
  end

  def send_invite
    InviteMailer.welcome(current_user,params[:guest_email],params[:id]).deliver_now
    redirect_to challenge_path
  end

  private

  def set_challenge
    @challenge = Challenge.find(params[:id])
    authorize @challenge
  end

  def challenge_params
    params.require(:challenge).permit(:title, :description, :rules, :picture, :start_date, :end_date, :id_user_owner, :picture_cache, :guest_email)
  end
end
