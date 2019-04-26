require 'pry'

require_relative './user'
require_relative './tweet'
require_relative './like'

brit = User.new('kingcons')
tun = User.new('tun')
rose = User.new('rose')

brit.post_tweet('man, ruby is not so bad. kinda cool actually')
tun.post_tweet('what happens if you call self on t2?')
a_tweet = brit.tweets.first
a_tweet.user = rose
brit.like_tweet(rose.tweets.first)
brit.like_tweet(tun.tweets.first)
tun.like_tweet(rose.tweets.first)

binding.pry

#brit.show_timeline
#tun.show_timeline
