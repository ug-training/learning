class Book < ApplicationRecord
  belongs_to :user
  default_scope -> { order(created_at: :desc) }  
  validates :user_id, presence: true
  validates :book_name, presence: true, length: { maximum: 40 }
  validates :author, presence: true, length: { maximum: 20 }
  validates :price, presence: true, length: { is: 5 }
end
