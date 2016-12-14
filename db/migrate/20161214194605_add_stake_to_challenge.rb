class AddStakeToChallenge < ActiveRecord::Migration[5.0]
  def change
    add_column :challenges, :at_stake, :string
  end
end
