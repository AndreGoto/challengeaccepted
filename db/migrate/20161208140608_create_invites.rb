class CreateInvites < ActiveRecord::Migration[5.0]
  def change
    create_table :invites do |t|
      t.references :challenge, foreign_key: true
      t.string :sender
      t.string :guest_email

      t.timestamps
    end
  end
end
