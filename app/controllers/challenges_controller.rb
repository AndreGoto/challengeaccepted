class ChallengesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_challenge, only: [:show, :edit, :update, :destroy, :invite, :send_invite]

  def index
    # @challenges = Challenge.all
    @challenges = policy_scope(Challenge)
  end

  def show
    @challenge.end_date = 0 if @challenge.end_date.nil?
    status_total = (@challenge.end_date - @challenge.start_date).to_i
    status_until_now = (Date.today - @challenge.start_date).to_i
    @status_percentage = (status_until_now * 100)/status_total
    @status_days_to_finish = status_total - status_until_now

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
    @challenge.invites.build
    #this action generates the file
  end

  def send_invite
    InviteMailer.welcome(@challenge, @challenge.invites).deliver_now
    #redirect_to challenge_url(challenge.id)
  end

  def invite_request
    # criar uma mensagem ao user owner com a requisiçao
    @challenge = Challenge.find(params[:challenge_id])
    message = "I'd like to join to your challenge #{@challenge.id} - #{@challenge.title}"
    @mails  = Mailbox.where(user_id: @challenge.id_user_owner,
                    id_user_contact: current_user.id,
                            message: message)
    if @mails.empty?
      @mails = Mailbox.create(user_id: @challenge.id_user_owner,
                      id_user_contact: current_user.id,
                              message: message)
      flash[:notice] = "Your request was send."
    else
      flash[:notice] = "Your already have requested it."
    end
    authorize @mails
    redirect_to challenge_path(@challenge)
  end

  private

  def set_challenge
    @challenge = Challenge.find(params[:id])
    authorize @challenge
  end

  def challenge_params
    #params.require(:challenge).permit(:title, :description, :rules, :picture, :start_date, :end_date, :id_user_owner, :picture_cache, :guest_email)
     params.require(:challenge).permit(:title, :description, :rules, :picture, :start_date, :end_date, :id_user_owner, :picture_cache, invites_attributes: [:guest_email])
  end
end
