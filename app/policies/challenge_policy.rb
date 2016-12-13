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

  def voting?
    list = []
    record.members.each do |member|
      list << member.user_id
    end
    list.include?(user.id)
  end

  def send_vote?
    list = []
    record.members.each do |member|
      list << member.user_id
    end
    list.include?(user.id)
  end

end
