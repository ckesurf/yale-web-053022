puts "Delete rides!"
Ride.destroy_all

puts "Delete drivers!"
Driver.destroy_all
puts "Delete passengers!"
Passenger.destroy_all

# DRIVERS

puts "Creating drivers..."

30.times do
  Driver.create(name: Faker::FunnyName.name, rating: rand(1..5), years_experience: rand(0..20), car_model: Faker::Vehicle.make_and_model, license_plate: Faker::Vehicle.license_plate)
end

puts "Done creating drivers!"

# PASSENGER

puts "Creating passengers..."

30.times do
  Passenger.create(name: Faker::FunnyName.name, age: rand(18...105), bio: Faker::Quote.yoda)
end

# RIDES

puts "Creating rides.."

60.times do
  Ride.create(passenger_id: Passenger.ids.sample, driver_id: Driver.ids.sample, price: rand(1..5000), distance: rand(1...9000), destination: Faker::Address.full_address, pick_up: Faker::Address.full_address)
end

puts "Done creating rides.."
