class ChallengePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  before_action :invite, only: [:invite, :send_invite]
  before_action :vote, only: [:voting, :send_vote]

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
  end

  def send_invite?
  end

  def voting?
  end

  def send_vote?
  end

  private

  def invite
    # only the member user from that specific challenge can invite
    Challenge.find(record.id).users.find(user.id) == user
  end

  def vote
    list = []
    Member.all.each do |member|
      list << member.user_id
    end
    list.include?(user.id)
  end

end
