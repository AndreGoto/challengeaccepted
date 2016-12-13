class Member < ApplicationRecord
  belongs_to :challenge
  belongs_to :user
  has_many :challenge_messages
end
