class Challenge < ApplicationRecord
  belongs_to :owner, foreign_key: "id_user_owner", class_name: "User"
  has_many :users, through: :members
  has_many :invites
  accepts_nested_attributes_for :guest_email, reject_if: :all_blank, allow_destroy: true
  mount_uploader :picture, PhotoUploader
end
