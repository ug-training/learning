class Book < ApplicationRecord
#books basic information and validation are given as book belongs to user and the length validation can be given to get error messages
  belongs_to :user
  default_scope -> { order(created_at: :desc) }  
  validates :user_id, presence: true
  validates :book_name, presence: true, length: { maximum: 40 }
  validates :author, presence: true, length: { maximum: 20 }
  validates :price, presence: true, length: { is: 3 }
end
