class ChallengesController < ApplicationController


  def show
    @challange = Challange.find[params:id]
  end


  def challange_params
    params.require(:job).permit(:title, :description, :rule, :picture, :start_date, :end_date)
  end

end
