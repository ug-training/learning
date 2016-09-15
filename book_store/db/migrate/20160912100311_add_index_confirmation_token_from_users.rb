class AddIndexConfirmationTokenFromUsers < ActiveRecord::Migration[5.0]
  def change
    add_index :users, :confirmation_token, unique: true
  end
end
