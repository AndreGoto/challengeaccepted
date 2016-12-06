class ChallengesController < ApplicationController
  # skip_before_action :authenticate_user!, only: [ :index ]
  before_action :set_challenge, only: [:show, :edit, :update, :destroy]

  def new
    @challenge = Challenge.new
  end

  def create
    @challenge = Challenge.new(challenge_params)
    @challenge.owner = current_user
    if @challenge.save
      redirect_to challenge_path(@challenge)
    else
      render :new
    end
  end

  def show
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

  private

  def set_challenge
    @challenge = Challenge.find(params[:id])
  end

  def challenge_params
    params.require(:challenge).permit(:title, :description, :rules, :picture, :start_date, :end_date, :id_user_owner, :picture_cache)
  end
end
