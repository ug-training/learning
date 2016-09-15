class SessionsController < ApplicationController
  #to create a new session the login action
 # def new
 # end
 #this is used to get the user logging in with the action of find as the email is used as index for the user table
 # def create
 #   user = User.find_by(email: params[:session][:email].downcase)
  #  if user && user.authenticate(params[:session][:password])
  #    if user.activated?
  #     log_in user
  #      redirect_to user
  #    else
  #      message  = "Account not activated. "
  #      message += "Check your email for the activation link."
  #      flash[:warning] = message
  #      redirect_to root_url
  #    end   
  #  else
  #  flash.now[:danger] = 'Invalid email/password combination' 
  #  render 'new'
	#end
  #end
#the action used for logout ; log out funtion is defined in sessions helper
 # def destroy
 #   log_out
 #   redirect_to root_url  	
 #end  
end
