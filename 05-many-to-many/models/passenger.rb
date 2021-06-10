# passenger -< ride

class Passenger
  def initialize(name, age, height, gender)
    @name = name
    @age = age
    @height = height
    @gender = gender
  end

  # ⭐️ has many rides
  def rides
    Ride.all.select { |ride_instance| ride_instance.passenger == self }
  end

  # ⭐️ has many drivers through rides
  def drivers
    self.rides.map do |ride_instance|
      ride_instance.driver
    end.uniq
  end
end
