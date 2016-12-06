class CreateMembers < ActiveRecord::Migration[5.0]
  def change
    create_table :members do |t|
      t.references :challenge, foreign_key: true
      t.references :user, foreign_key: true
      t.integer :voted_id

      t.timestamps
    end
  end
end
