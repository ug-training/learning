class RemoveConfirmationDigestFromUsers < ActiveRecord::Migration[5.0]
  def change
    remove_column :users, :confirmation_digest, :datetime
  end
end
