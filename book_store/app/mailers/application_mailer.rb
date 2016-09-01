class ApplicationMailer < ActionMailer::Base
#this can be used to give the mailer address and layout
  default from: "noreply@example.com"
  layout 'mailer'
end
