class AddPictureToChallengeMessage < ActiveRecord::Migration[5.0]
  def change
    add_column :challenge_messages, :picture, :string
  end
end
