class ChallengesController < ApplicationController
  before_action :set_challenge, only: [:show, :edit, :update, :destroy]

  def new
<<<<<<< HEAD
    @challenges = Challenge.new
    authorize @challenge
=======
    @challenge = Challenge.new
>>>>>>> 19a621d37d73fdb0a4cc3d63d33bd7526b91580c
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

  def challenge_params
    params.require(:challenge).permit(:title, :description, :rules, :picture, :start_date, :end_date, :id_user_owner, :picture_cache)
  end

  def show
    @challenge = Challenge.find(params[:id])
  end


  def challange_params
    params.require(:job).permit(:title, :description, :rule, :picture, :start_date, :end_date)
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
    authorize @challenge
  end

  def chalenge_params
    params.require(:challenge).permit(:title, :description, :picture, :rules, :start_date, :end_date)
  end
end
