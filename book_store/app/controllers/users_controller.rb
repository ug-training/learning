class UsersController < ApplicationController
 before_action :logged_in_user, only: [:index, :edit, :update, :destroy]	

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @books = @user.books
  end

	
  def new
  	@user = User.new
  end

  def create
    @user = User.new(user_params)   
    if @user.save
      @user.send_activation_email
      flash[:info] = "Please check your email to activate your account."
      redirect_to root_url
    else
      render 'new'
    end
  end  

   private
   #action used in this page itself

    def user_params
      params.require(:user).permit(:first_name, :last_name, :email, :password,
                                   :password_confirmation)
    end 
end
