class Ride
  attr_reader :passenger, :driver, :distance
  @@all = []

  def initialize(driver, passenger, distance)
    @driver = driver
    @passenger = passenger
    @distance = distance

    @@all << self
  end

  def self.all
    @@all
  end

  def self.average_distance
    # APPROACH 1
    # # get each ride and add their distances
    # distance_sum = Ride.all.reduce(0) do |sum, ride|
    #   sum + ride.distance
    # end

    # # divide that number by the total number of rides
    # distance_sum / Ride.all.size

    # APPROACH 2
    # distance_sum = Ride.all.sum do |ride|
    #   ride.distance
    # end

    # distance_sum / Ride.all.size

    # APPROACH 3
    distances = self.all.map { |ride| ride.distance }
    distances.sum / distances.length
  end
end

# DRY
# YAGNI
