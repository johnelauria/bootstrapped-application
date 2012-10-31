class Mailman < ActionMailer::Base
  default from: "myawesomeapplication@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.mailman.welcome.subject
  #
  def welcome(user)
    @user = user

    mail(to: user.email, subject: "Signup Confirmation")
  end
end
