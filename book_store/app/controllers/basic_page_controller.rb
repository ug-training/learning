class BasicPageController < ApplicationController
 #gives the home action to be performed in home the book is created and all the books in db are assigned to @books to get access in book list 
  
  def home
  	if logged_in?
  	    @book = current_user.books.build
        @books = Book.all
    end
  end

  def about
  end

  def contact
  end
end
