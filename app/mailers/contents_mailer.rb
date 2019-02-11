class ContentsMailer < ApplicationMailer
  def send_mail(content)
    @content = content

    mail from: @content.user.email, to: @content.address.email, subject: @content.title
  end
end
