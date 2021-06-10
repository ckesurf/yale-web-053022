# Driver -< Ride

class Driver
  def initialize(name, salary, picture, rating, years_worked)
    @name = name
    @salary = salary
    @rating = rating
    @picture = picture
    @years_worked = years_worked
  end

  # ⭐️ has many rides
  def rides
    Ride.all.select { |ride_instance| ride_instance.driver == self }
  end

  # ⭐️ has many passengers through rides
  def passengers
    # get all of the driver's rides
    # from each of those rides, pull out the passengers
    self.rides.map do |ride_instance|
      ride_instance.passenger
    end.uniq
  end
end
