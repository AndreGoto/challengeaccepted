class Member < ApplicationRecord
  belongs_to :challenge
  belongs_to :user
  has_many :challengemessage
end
