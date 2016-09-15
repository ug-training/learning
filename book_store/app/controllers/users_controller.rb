class UsersController < ApplicationController
  #logged_in_user is given in application_controller.rb
before_action :logged_in_user, only: [:index, :edit, :update, :destroy]	

 #index can be used to get al the users in th database
 def index
   @users = User.all
 end

#the how action is given for the current_user and the created books for the user
 def show
   @user = User.find(params[:id])
   @books = @user.books
 end

#this is used in the creation os user account
# def new
# 	@user = User.new
# end

#cerate action is used to add further more users and saving it
# def create
#   @user = User.new(user_params)
#    if @user.save
#      @user.send_activation_email
#      flash[:info] = "Please check your email to activate your account."
#      redirect_to root_url
#    else
#      render 'new'
#    end
# end  

 private
   #action used in this page itself

    def user_params
      params.require(:user).permit(:first_name, :last_name, :email, :password,
                                   :password_confirmation)
    end 
end
