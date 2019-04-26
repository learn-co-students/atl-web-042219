require 'pry'

require_relative './user'
require_relative './tweet'

example = Tweet.new("brit", "whatever")
example.show_funny_tweet

brit = User.new('kingcons')
tun = User.new('tun')

brit.post_tweet('man, ruby is not so bad. kinda cool actually')
tun.post_tweet('what happens if you call self on t2?')

brit.show_timeline
tun.show_timeline

t1 = brit.tweets.first
t1.show_funny_tweet

binding.pry
