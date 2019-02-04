namespace :contents do
  desc '送信コンテンツのURLを発行する'
  task send_mail: :environment do
      ContentsMailer.send_mail(content).deliver if (Time.now == content.send_at)
  end
end
