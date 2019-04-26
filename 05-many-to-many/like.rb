class Like
  attr_reader :user, :tweet

  @@likes = []

  def self.all
    @@likes
  end

  def initialize(user, tweet)
    @user = user
    @tweet = tweet
    @@likes << self
  end

  def to_s
    "#{self.user.username} liked #{self.tweet.message} written by #{self.tweet.username}"
  end
end
