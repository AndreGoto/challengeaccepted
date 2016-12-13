class CreateChallengeRequests < ActiveRecord::Migration[5.0]
  def change
    create_table :challenge_requests do |t|
      t.references :user, foreign_key: true
      t.references :challenge, foreign_key: true

      t.timestamps
    end
  end
end
