class User
  attr_reader :username

  def initialize(username, bio)
    @username = username
    @bio = bio
  end

  # tells us about the relationship
  def post_tweet(message)
    Tweet.new(message, self)
  end

  # tells us about the relationship
  # a user has many tweets
  def tweets
    Tweet.all.select do |tweet|
      tweet.user == self
    end
  end
end
