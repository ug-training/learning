class CreateBooks < ActiveRecord::Migration[5.0]
  def change
    create_table :books do |t|
      t.string :book_name
      t.string :author
      t.integer :price
      t.references :user, foreign_key: true

      t.timestamps
    end
        add_index :books, [:user_id, :created_at]
  end
end
