class Challenge < ApplicationRecord
  belongs_to :owner, foreign_key: "id_user_owner", class_name: "User"
  has_many :users, through: :members

  mount_uploader :picture, PhotoUploader

  def send_welcome_email
    UserMailer.welcome(self).deliver_now
  end
end
