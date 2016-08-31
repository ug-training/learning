class BasicPageController < ApplicationController
  
  def home
  	if logged_in?
  	    @book = current_user.books.build
        @books = Book.all
    end
  end


  def login
  end
end
