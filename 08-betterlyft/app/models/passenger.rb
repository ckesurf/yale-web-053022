class Passenger
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name

    @@all << self
  end

  def rides
    Ride.all.select { |ride| ride.passenger == self }
  end

  def drivers
    self.rides.map do |ride|
      ride.driver
    end
  end

  def total_distance
    self.rides.reduce(0) do |sum, ride|
      sum + ride.distance
    end
  end

  def self.premium_members
    self.all.select { |passenger| passenger.total_distance > 100 }
  end

  def self.all
    @@all
  end
end
