class RemoveActivationDigestFromUsers < ActiveRecord::Migration[5.0]
  def change
    remove_column :users, :activation_digest, :string
  end
end
