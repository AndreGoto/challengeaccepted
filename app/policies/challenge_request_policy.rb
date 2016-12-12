class ChallengeRequestPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end
  def request_invite?
    return true
  end

  def destroy?
    Challenge.find(record.challenge_id).owner == user
  end
end
