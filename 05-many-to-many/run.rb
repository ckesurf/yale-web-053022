require "pry"
require_relative "models/driver"
require_relative "models/ride"
require_relative "models/passenger"

p1 = Passenger.new("Raffy", 11, "short", "male")
p2 = Passenger.new("Doe", 15, "90", "male")

d1 = Driver.new("Dani", 9999, "pic.jpg", 5, 5)
d2 = Driver.new("Kyle", 2345, "pic.jpg", 5, 20)
d3 = Driver.new("Lindsay", 98765, "pic.jpg", 5, 10)

r1 = Ride.new("here", "there", 100, 90, d1, p1)
r2 = Ride.new("kansas", "minesota", 1000, 900, d1, p1)
r3 = Ride.new("nj", "ny", 100, 90, d1, p2)

all_rides = Ride.all

d1_rides = d1.rides
p1_rides = p1.rides

d1_passengers = d1.passengers

p1_drivers = p1.drivers

binding.pry
