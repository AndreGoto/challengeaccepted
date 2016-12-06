class ChallengesController < ApplicationController

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

  def challenge_params
    params.require(:challenge).permit(:title, :description, :rules, :picture, :start_date, :end_date, :id_user_owner, :picture_cache)
  end

  def show
    @challenge = Challenge.find(params[:id])
  end


  def challange_params
    params.require(:job).permit(:title, :description, :rule, :picture, :start_date, :end_date)
  end

end
