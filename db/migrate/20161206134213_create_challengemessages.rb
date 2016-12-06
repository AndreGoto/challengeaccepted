class CreateChallengemessages < ActiveRecord::Migration[5.0]
  def change
    create_table :challengemessages do |t|
      t.string :message
      t.references :member, foreign_key: true

      t.timestamps
    end
  end
end
