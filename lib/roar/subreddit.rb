require 'snoo'

class Subreddit
	attr_reader :title, :url, :ups, :downs, :score, :over_18

	def initialize(subreddit)
		data = Snoo::Client.new.get_listing(:subreddit => subreddit)["data"]["children"][0]["data"]

		@title = data["title"]
		@url = data["url"]
		@ups = data["ups"]
		@downs = data["downs"]
		@score = data["score"]
		@over_18 = data["over_18"]
	end
end