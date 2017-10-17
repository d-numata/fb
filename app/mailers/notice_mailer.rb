class NoticeMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notice_mailer.sendmail_tweet.subject
  #
  # 引数としてtweetを追加します。
  def sendmail_tweet(tweet)
    @tweet = tweet

    mail to: "dnumata@nttpc.co.jp"
      subject: '【Tweet】tweetが投稿されました'
  end
end
