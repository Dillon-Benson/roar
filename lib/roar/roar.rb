require File.dirname(__FILE__) + '/subreddit'
require 'ruby-growl'

class Roar
	def initialize(*subreddits)
		@reddits = []
		subreddits.each { |subreddit| @reddits << subreddit }
	end

	def notify
		@reddits.each { |reddit| yield reddit }
	end
end