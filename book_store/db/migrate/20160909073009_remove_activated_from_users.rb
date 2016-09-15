class RemoveActivatedFromUsers < ActiveRecord::Migration[5.0]
  def change
    remove_column :users, :activated, :boolean
  end
end
