require 'pry'

require_relative './user'
require_relative './tweet'

brit = User.new('kingcons')
tun = User.new('tun')

brit.post_tweet('man, ruby is not so bad. kinda cool actually')
tun.post_tweet('what happens if you call self on t2?')

brit.show_timeline
tun.show_timeline

binding.pry
