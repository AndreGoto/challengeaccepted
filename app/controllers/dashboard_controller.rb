class DashboardController < ApplicationController
  def index
    @challenges = policy_scope(Challenge)

    challenges = current_user.challenges
    @challenges_progress = []
    @challenges_ended = []
    @challenge_created = Challenge.where(user_id: current_user.id)

    # @challenge_waiting = Challenge.invite

    challenges.each do |challenge|
      if challenge.end_date < Date.today
         @challenges_ended << challenge
      else
        @challenges_progress << challenge
      end
    end
  end

end
