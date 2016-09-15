class ApplicationController < ActionController::Base
  before_filter :configure_permitted_parameters, if: :devise_controller?
  #before_filter :authenticate_user!
  protect_from_forgery with: :exception
  include SessionsHelper
  protected
  def configure_permitted_parameters
  devise_parameter_sanitizer.permit(:sign_up) do  |user|
   user.permit(:first_name, :last_name, :email, :password, :password_confirmation) 
  end
  devise_parameter_sanitizer.permit(:sign_in) do  |user|
   user.permit(:email, :password)
  end 
  end

  #def authenticate_user!
  #  if user_signed_in?
  #   log_in user
  #   redirect_to user
  #  else
    #  redirect_to login_path, :notice => 'if you want to add a notice'
      ## if you want render 404 page
      ## render :file => File.join(Rails.root, 'public/404'), :formats => [:html], :status => 404, :layout => false
  #  end
  #end

  def after_sign_up_path_for(resource)
    redirect_to users
  end
  

   private

    # Confirms a logged-in user used in user controller and books controller and the logged_in? is defined in sessins helper 
   def logged_in_user
      unless logged_in?
        flash[:danger] = "Please log in."
       redirect_to login_url
      end
   end
end
