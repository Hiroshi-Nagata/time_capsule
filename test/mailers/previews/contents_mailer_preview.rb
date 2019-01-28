# Preview all emails at http://localhost:3000/rails/mailers/contents_mailer
class ContentsMailerPreview < ActionMailer::Preview
  
  def say_hello
    ContentsMailer.say_hello(User.first)
  end
  
end
