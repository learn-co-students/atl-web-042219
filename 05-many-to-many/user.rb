class User
  attr_reader :username, :tweets

  def initialize(username)
    @username = username
    @tweets = []
  end

  def post_tweet(message)
    tweet = Tweet.new(self, message)
    @tweets << tweet
  end

  def show_timeline
    self.tweets.each do |tweet|
      puts "#{self.username} tweets: '#{tweet.message}'"
    end
  end
end
