class RemoveSenderFromInvites < ActiveRecord::Migration[5.0]
  def change
    remove_column :invites, :sender, :string
  end
end
