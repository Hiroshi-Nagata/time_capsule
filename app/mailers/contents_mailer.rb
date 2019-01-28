class ContentsMailer < ApplicationMailer
  def say_hello(user)
    @user = user

    mail to: "#{@user.email}", subject: "Hello, #{@user.name}"
  end
end
