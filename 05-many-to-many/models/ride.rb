class Ride
  attr_reader :driver, :passenger
  @@all = [] # single source of truth for the rides

  def initialize(pick_up, drop_off, distance, cost, driver, passenger)
    @pick_up = pick_up
    @drop_off = drop_off
    @distance = distance
    @cost = cost

    # ⭐️ belongs to driver
    @driver = driver

    # ⭐️ belongs to passenger
    @passenger = passenger

    @@all << self
  end

  def self.all
    @@all
  end
end
