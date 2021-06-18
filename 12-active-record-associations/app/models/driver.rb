# Driver -< Ride
class Driver < ActiveRecord::Base
  has_many :rides # gives us a Driver#rides method
  has_many :passengers, through: :rides # gives us a method!!!

  #   def rides
  #     Ride.all.select { |ride| ride.driver_id == self.id }
  #   end
end



# Driver#rides -> driver has many rides
# Driver#passengers -> driver has many passengers (through its rides)