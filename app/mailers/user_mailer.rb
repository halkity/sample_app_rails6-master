class UserMailer < ApplicationMailer

  # Subject は I18n ファイルの config/locales/en.yml で以下のように設定できます。
  #
  #   en.user_mailer.account_activation.subject
  #
  def account_activation(user)
    @user = user
    mail to: user.email, subject: "Account activation"
  end

  # Subjectは、config/locales/en.ymlのI18nファイルで以下のルックアップで設定することができます。
  #
  #   en.user_mailer.password_reset.subject
  #
   def password_reset(user)
    @user = user
    mail to: user.email, subject: "Password reset"
  end
end
