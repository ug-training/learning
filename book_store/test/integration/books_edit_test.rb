require 'test_helper'

class BooksEditTest < ActionDispatch::IntegrationTest
	def setup
		@user = users(:michael)
		@book = books(:one)
	end
  
    test "unsuccessful edit" do
    log_in_as(@user)
    get edit_book_path(@book)
    assert_template 'books/edit'
    patch book_path(@book), params: { book: { book_name:  "",
                                              author: "",
                                              price:55 } }

    assert_template 'books/edit'
  end

   test "successful edit" do
    log_in_as(@user)
    get edit_book_path(@book)
    assert_template 'books/edit'
    book_name  = "Lorem ipsum"
    author = "King john"
    price = 555
    patch book_path(@book), params: { book: { book_name: "Lorem ipsum" ,
                                              author: "King john",
                                              price:  555 
                                              } }
    assert_not flash.empty?
    assert_redirected_to root_url
    @book.reload
    assert_equal book_name,  @book.book_name
    assert_equal author, @book.author
  	assert_equal price, @book.price
  end
end
