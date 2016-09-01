class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper
   private

    # Confirms a logged-in user used in user controller and books controller and the logged_in? is defined in sessins helper 
    def logged_in_user
      unless logged_in?
        flash[:danger] = "Please log in."
        redirect_to login_url
      end
    end
end
