class ChallengesController < ApplicationController
  before_action :set_challenge, only: [:show, :edit, :update, :destroy]

  def new
    @challenges = Challenge.new
    authorize @challenge
  end

  def create

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
