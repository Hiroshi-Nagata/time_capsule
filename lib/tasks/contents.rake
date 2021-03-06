namespace :contents do
  desc '送信コンテンツのURLを発行する'
  task send_mail: :environment do

    contents = Content.where("send_at <= ?", Time.current).where(status: :wait)
    contents.each do |content|
      begin
        ContentsMailer.send_mail(content).deliver
        content.sent_at = Time.now
        content.status = :success
        content.save
      rescue => error
        content.status = :error
        content.save
      end
    end
  end
end
