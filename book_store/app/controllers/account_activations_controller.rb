class AccountActivationsController < ApplicationController
  #user activation and authentication is chek and redirected to user as log-in after the user creation(sign-up)
  #def edit
  #  user = User.find_by(email: params[:email])
  #  if user && !user.confirmed? && user.authenticated?(:activation, params[:id])
  #    user.activate
  #    log_in user
  #    flash[:success] = "Account activated!"
  #    redirect_to user
  #  else
  #    flash[:danger] = "Invalid activation link"
  #    redirect_to root_url
  #  end
  #end
end
