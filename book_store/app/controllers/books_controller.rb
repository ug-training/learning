class BooksController < ApplicationController
 before_action :logged_in_user, only: [:index, :create, :edit, :update, :destroy]
 before_action :correct_user,   only: :destroy
 #to get all the book records from db	
  def index
    @books = Book.all
  end

#bulids books for current user and error display is given
  def create
  	@book = current_user.books.build(book_params)
    if @book.save
      flash[:success] = "Book created for user!!!!"
      redirect_to root_url
    else
      @books = Book.all
      render 'basic_page/home'
    end
  end

#to edit and save user.books can be given
  def edit
  	@book = current_user.books.find_by(id: params[:id])
  end

   def update
    @book = current_user.books.find_by(id: params[:id])
    if @book.update_attributes(book_params)
      flash[:success] = "Book updated"
      redirect_to root_url
    else
      render 'edit'
    end
  end
#to delete a particular book
  def destroy
  	@book.destroy
    flash[:success] = "Book details deleted"
    redirect_to request.referrer || root_url
  end

    private
#parameters given in a users.book
    def book_params
      params.require(:book).permit(:book_name, :author, :price)
    end
#to check whether the correct user performs delete
    def correct_user
      @book = current_user.books.find_by(id: params[:id])
      redirect_to root_url if @book.nil?
    end
end
