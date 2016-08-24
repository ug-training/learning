class UsersController < ApplicationController
 before_action :logged_in_user, only: [:edit, :update]	

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

	
  def new
  	@user = User.new
  end

  def create
    @user = User.new(user_params)   
    if @user.save
      log_in @user  #new users will be logged in automatically
      flash[:success] = "Welcome to Book World!!!"    	
      redirect_to @user
    else
      render 'new'
    end
  end  

   private

    def user_params
      params.require(:user).permit(:first_name, :last_name, :email, :password,
                                   :password_confirmation)
    end 
end
