class ContentsMailer < ApplicationMailer
  def send_mail(content)
    @content = content

    mail to: "#{@content.address_id}", subject: "#{@content.title}"
  end
end
