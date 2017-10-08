class UserMailer < ApplicationMailer

  default from: "example@example.com"

  def signup_confirmation(user)
    @user = user
    mail to: user.email, subject: "Sign Up Confirmation email"
  end
end
