class CreateChallenges < ActiveRecord::Migration[5.0]
  def change
    create_table :challenges do |t|
      t.string :title
      t.text :description
      t.text :rules
      t.string :picture
      t.date :start_date
      t.date :end_date
      t.integer :id_user_owner, foreign_key: true

      t.timestamps
    end
  end
end
