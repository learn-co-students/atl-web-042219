class User
  attr_reader :username

  def initialize(username)
    @username = username
  end

  def tweets
    Tweet.all.select do |tweet|
      tweet.user == self
    end
  end

  # def liked_tweets
  #   list = []
  #   Like.all.each do |like|
  #     if like.user == self
  #       list << like.tweet
  #     end
  #   end
  #   list
  # end

  def liked_tweets
    Like.all.select { |l| l.user == self }.map { |l| l.tweet }
  end

  def post_tweet(message)
    Tweet.new(self, message)
  end

  def like_tweet(tweet)
    Like.new(self, tweet)
  end

  def show_timeline
    self.tweets.each do |tweet|
      puts "#{self.username} tweets: '#{tweet.message}'"
    end
  end
end
