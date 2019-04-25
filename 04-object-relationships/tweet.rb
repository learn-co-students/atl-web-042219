class Tweet
  attr_reader :user, :message

  def initialize(user, message)
    @user = user
    @message = message
  end

  def show_funny_tweet
    puts @message.reverse
  end

  def username
    # @user.username
    self.user.username
  end
end
