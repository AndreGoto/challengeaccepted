class Challenge < ApplicationRecord
  belongs_to :owner, foreign_key: "id_user_owner", class_name: "User"
  has_many :users, through: :members
end
