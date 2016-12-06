class Challenge < ApplicationRecord
  belongs_to :user
  has_many :users, through: :members
end
