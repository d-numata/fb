require 'test_helper'

class NoticeMailerTest < ActionMailer::TestCase
<<<<<<< HEAD
  test "sendmail_blog" do
    mail = NoticeMailer.sendmail_blog
    assert_equal "Sendmail blog", mail.subject
=======
  test "sendmail_tweet" do
    mail = NoticeMailer.sendmail_tweet
    assert_equal "Sendmail tweet", mail.subject
>>>>>>> origin/master
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
