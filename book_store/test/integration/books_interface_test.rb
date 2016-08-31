require 'test_helper'

class BooksInterfaceTest < ActionDispatch::IntegrationTest
  def setup
    @user = users(:michael)
    @book = books(:one)
  end

  test "book interface" do
    log_in_as(@user)
    get root_path
    # Invalid submission
    assert_no_difference 'Book.count' do
      post books_path, params: { book: { book_name: "",
      									 author: "",
      									 price:55 } }
    end
    assert_select 'div#error_explanation'
    # Valid submission
    book_name= "Lorem ipsum"
    author= "King John"
    price= '555'
    assert_difference 'Book.count', 1 do
      post books_path, params: { book: { book_name: book_name,
      									 author: author,
      									 price: price } }
    end
    assert_redirected_to root_url
    follow_redirect!
    assert_match book_name, response.body
    assert_match author, response.body
    assert_match price, response.body
    # Delete post
    assert_select 'a', text: 'delete'
    first_book = @user.books.paginate(page: 1).first
    assert_difference 'Book.count', -1 do
      delete book_path(first_book)
    end
    # Visit different user (no delete links)
    get user_path(users(:archer))
    assert_select 'a', text: 'delete', count: 0
end
end
