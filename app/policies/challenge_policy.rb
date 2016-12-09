class ChallengePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def create?
    return true
  end

  def update?
    record.owner == user
  end

  def destroy?
    record.owner == user
  end

  def invite?
    # only the member user from that specific challenge can invite
    Challenge.find(record.id).users.find(user.id) == user
  end

  def send_invite?
    Challenge.find(record.id).users.find(user.id) == user
  end
end
