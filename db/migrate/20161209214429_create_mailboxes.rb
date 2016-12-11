class CreateMailboxes < ActiveRecord::Migration[5.0]
  def change
    create_table :mailboxes do |t|
      t.string :message
      t.references :user, foreign_key: true
      t.integer :id_user_contact, foreign_key: true

      t.timestamps
    end
  end
end
