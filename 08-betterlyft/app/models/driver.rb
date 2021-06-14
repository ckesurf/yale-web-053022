class Driver
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name

    @@all << self
  end

  def rides
    Ride.all.select { |ride| ride.driver == self }
  end

  def passenger_names
    self.rides.map do |ride|
      ride.passenger.name
    end.uniq

    # # from all the rides, we can get all the passengers and their names
    # passengers = rides.map do |ride|
    #   ride.passenger
    # end

    # # from each passenger, pull out the name
    # passengers.map { |passenger| passenger.name }
  end

  def self.ball
    @@all
  end

  def self.mileage_cap(distance)
    # iterate over all the drivers
    self.all.select do |driver|
      driver.total_distance > distance
    end
  end

  def foo
    total_distance
  end

  private

  def total_distance
    # get all of the rides of a driver
    self.rides.reduce(0) do |sum, ride|
      # add each distances from each ride
      sum + ride.distance
    end
    # puts "Cheese"
  end
end

# ruby 2.7 and up -> you can use the explicit self to call private methods
# under 2.7 -> you only call ruby private methods on the implicit self
