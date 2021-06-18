class Ride < ActiveRecord::Base
  belongs_to :driver # gives us a Ride#driver method
  belongs_to :passenger # gives us the Ride#passenger method

  #   def driver
  #     Driver.all.find { |driver| driver.id == self.driver_id }
  #   end
end



# Ride#driver -> get access to the driver object that the ride belongs to
# Ride#passenger -> get access to the passenger object that the ride belongs to