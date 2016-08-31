require 'test_helper'

class BookTest < ActiveSupport::TestCase

  def setup
    @user = users(:michael)
    @book= @user.books.build(book_name: "Lorem ipsum", author:"king john", price:555)
  end

  test "should be valid" do
    assert @book.valid?
  end

  test "user id should be present" do
    @book.user_id = nil
    assert_not @book.valid?
  end

  test "book_name should be present" do
    @book.book_name = "   "
    assert_not @book.valid?
  end

  test "book_name should be at most 40 characters" do
    @book.book_name = "a" * 41
    assert_not @book.valid?
  end

  test "author should be present" do
    @book.author = "   "
    assert_not @book.valid?
  end

  test "author should be at most 20 characters" do
    @book.author = "a" * 21
    assert_not @book.valid?
  end

  test "price should be present" do
    @book.price = "   "
    assert_not @book.valid?
  end

  test "price should be at most 3" do
    @book.price = "a" * 4
    assert_not @book.valid?
  end
  test "order should be most recent first" do
    assert_equal books(:most_recent), Book.first
  end
end