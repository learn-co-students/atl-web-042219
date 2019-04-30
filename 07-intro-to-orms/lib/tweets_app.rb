class TweetsApp

  def call
    puts 'Welcome to Twitter'

    puts 'Enter a username:'
    username = gets.chomp

    puts 'Enter a message:'
    message = gets.chomp

    tweet = Tweet.new({'username' => username, 'message' => message})

    tweets = Tweet.all
    render(tweets)
  end

  private

  def render(tweets)
    tweets.each do |tweet|
      puts "#{tweet.id}. #{tweet.username} says: #{tweet.message}"
    end
  end
end
