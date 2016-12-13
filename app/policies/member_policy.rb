class MemberPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope
    end
  end

  def create?
    return true
  end

  def accept_request?
    User.find(Challenge.find(record.challenge_id).id_user_owner) == user
  end
end
