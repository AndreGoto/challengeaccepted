class MailboxPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope
    end
  end

  def invite_request?
    return true
  end
end
