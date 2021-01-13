class ApplicationMailer < ActionMailer::Base
  # デフォルトの送信者のアドレス設定
  default from: "noreply@example.com"   
  layout 'mailer'
end
