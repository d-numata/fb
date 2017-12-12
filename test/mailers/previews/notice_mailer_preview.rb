# Preview all emails at http://localhost:3000/rails/mailers/notice_mailer
class NoticeMailerPreview < ActionMailer::Preview

<<<<<<< HEAD
  # Preview this email at http://localhost:3000/rails/mailers/notice_mailer/sendmail_blog
  def sendmail_blog
    NoticeMailer.sendmail_blog
=======
  # Preview this email at http://localhost:3000/rails/mailers/notice_mailer/sendmail_tweet
  def sendmail_tweet
    NoticeMailer.sendmail_tweet
>>>>>>> origin/master
  end

end
