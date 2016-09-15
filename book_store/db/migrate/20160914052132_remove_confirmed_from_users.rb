class RemoveConfirmedFromUsers < ActiveRecord::Migration[5.0]
  def change
    remove_column :users, :confirmed, :boolean
  end
end
