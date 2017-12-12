class NoticeMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
<<<<<<< HEAD
  #   en.notice_mailer.sendmail_blog.subject
  #
  
  # 引数としてblogを追加します。
  def sendmail_blog(blog)
    @blog = blog

    @greeting = "Hi"

    mail to: "dnumata@nttpc.co.jp",
      subject: '【Achieve】ブログが投稿されました'
  end

  def sendmail_contact(contact)
    @contact = contact
    mail to: contact.email,
      subject: '【Achieve】問い合わせが投稿されました'
  end
end
=======
  #   en.notice_mailer.sendmail_tweet.subject
  #
  # 引数としてtweetを追加します。
  def sendmail_tweet(tweet)
    @tweet = tweet

    mail to: "dnumata@nttpc.co.jp",
      subject: '【Tweet】tweetが投稿されました'
  end
end
>>>>>>> origin/master
