class Challenge < ApplicationRecord
  belongs_to :owner, foreign_key: "id_user_owner", class_name: "User"
  has_many :members
  has_many :users, through: :members
  has_many :members
  has_many :invites
  has_many :challenge_requests
  has_many :challenge_messages, through: :members
  accepts_nested_attributes_for :invites, reject_if: :all_blank, allow_destroy: true
  mount_uploader :picture, PhotoUploader
end
