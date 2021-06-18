class Passenger < ActiveRecord::Base
  has_many :rides # gives us a method!!!! Passenger#rides
  has_many :drivers, through: :rides # also gives us a method :D Passenger#drivers

  #   def drivers
  #     self.rides.map { |ride| ride.driver }
  #   end

  def most_expensive_ride
    # the passenger's most expensive ride
    # self.rides.order("price DESC").first

    self.rides.max_by do |ride|
      ride.price
    end
  end
end

# Passenger#rides -> has many rides
# Passenger#drivers -> has many drivers (through rides)
