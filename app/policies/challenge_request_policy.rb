class ChallengeRequestPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end
  def request_invite?
    return true
  end
end
