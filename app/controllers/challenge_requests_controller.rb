class ChallengeRequestsController < ApplicationController
  def index
    @ChallengeRequest = policy_scope(ChallengeRequest)
    challenges = Challenge.where(id_user_owner: current_user.id)
    @requests = []
    unless challenges.empty?
      challenges.each do |challenge|
        @requests << ChallengeRequest.where(challenge_id: challenge.id)
      end
    end
  end
end
