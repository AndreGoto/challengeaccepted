class AddColumnToChallenges < ActiveRecord::Migration[5.0]
  def change
    add_column :challenges, :yourself, :boolean, default: false
  end
end
