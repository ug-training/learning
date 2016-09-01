class UserMailer < ApplicationMailer

  # this gives the mail to be sent with the subject os account activation
  def account_activation(user)
    @user = user
    mail to: user.email, subject: "Account activation"
  end
  
end
