require_relative "../config/environment.rb"
require "pry"

def reload
  load "config/environment.rb"
end

p1 = Passenger.new("Raffy")
p2 = Passenger.new("Anh")
p3 = Passenger.new("Kyle")

d1 = Driver.new("Joe")
d2 = Driver.new("Eten")
d3 = Driver.new("Dani")

r1 = Ride.new(d1, p1, 30.5)
r2 = Ride.new(d1, p2, 310.5)
r3 = Ride.new(d1, p1, 90.87)
r4 = Ride.new(d2, p1, 100000.97)

d1.passenger_names
d1.rides


binding.pry
