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
    record.owner == user
  end

  def send_invite?
    record.owner == user
  end
end
