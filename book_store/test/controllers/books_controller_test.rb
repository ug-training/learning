require 'test_helper'

class BooksControllerTest < ActionDispatch::IntegrationTest
  def setup
    @book = books(:one)
  end
    test "should redirect create when not logged in" do
    assert_no_difference 'Book.count' do
      post books_path, params: { book: { book_name: "Lorem ipsum", author: "king john", price: 555 } }
    end
    assert_redirected_to login_url
  end

  test "should redirect destroy when not logged in" do
    assert_no_difference 'Book.count' do
      delete book_path(@book)
    end
    assert_redirected_to login_url
  end

   test "should redirect edit when not logged in" do
    get edit_book_path(@book)
    assert_not flash.empty?
    assert_redirected_to login_url
  end

  test "should redirect update when not logged in" do
    patch book_path(@book), params: { book: { book_name: @book.book_name,
                                              author: @book.author,
                                              price: 555 } }
    assert_not flash.empty?
    assert_redirected_to login_url
  end

end
