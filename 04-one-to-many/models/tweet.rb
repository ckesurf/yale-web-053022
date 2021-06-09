class Tweet
  attr_reader :message, :user

  @@all = [] # single source for the Tweets

  def initialize(message, user_instance)
    @message = message

    # tells us about the relationship
    # tweet belongs to user
    @user = user_instance

    # add tweet instance to the array
    @@all << self
  end

  def self.all
    @@all
  end

  def username
    self.user.username
  end
end
