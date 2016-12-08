class CreateChallengeMessages < ActiveRecord::Migration[5.0]
  def change
    create_table :challenge_messages do |t|
      t.string :message
      t.references :member, foreign_key: true

      t.timestamps
    end
  end
end
