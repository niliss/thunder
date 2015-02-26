class LikeMailer < ActionMailer::Base
  default from: "like@thunder.com"
  def match_email(user, friend)
  	@friend = friend
    @user = user
    @url  = 'http://example.com/login'
    mail(to: @user.email, subject: 'You have got a MATCH!')
  end
end
