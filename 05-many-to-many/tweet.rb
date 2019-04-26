class Tweet
  attr_reader :message
  attr_accessor :user

  @@tweets = []

  def self.all
    @@tweets
  end

  def initialize(user, message='hello world')
    @user = user
    @message = message
    @@tweets << self
  end

  def show_funny_tweet
    puts self.message.reverse
  end

  def likers
    likes = Like.all.select do |like|
      like.tweet == self
    end
    likes.map { |like| like.user }
  end

  def username
    # @user.username
    self.user.username
  end
end
