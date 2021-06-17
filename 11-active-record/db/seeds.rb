puts "Destroying all drivers"
Driver.destroy_all

puts "Create drivers"

Driver.create(name: "Michelle", age: 10, years_experience: 9, salary: 3456, car_model: "Mazda cx5")
Driver.create(name: "Pranik", age: 13, years_experience: 10, salary: 876, car_model: "Ferrari")
Driver.create(name: "Ekow", age: 14, years_experience: 1, salary: 1000, car_model: "Honda Accord")
Driver.create(name: "Anh", age: 19, years_experience: 99, salary: 9999, car_model: "Tesla")

# let's save some keystrokes!
Driver.create([
  { name: "Leslie", age: 10, years_experience: 9, salary: 3456, car_model: "Mazda cx5" },
  { name: "Doe", age: 20, years_experience: 5, salary: 3456, car_model: "Mazda cx5" },
  { name: "Dani", age: 40, years_experience: 4, salary: 3456, car_model: "Mazda cx9" },
  { name: "Lindsay", age: 50, years_experience: 9, salary: 3456, car_model: "Mazda cx3" },
  { name: "Jeff", age: 60, years_experience: 3, salary: 3456, car_model: "Hyndai" },
])

puts "Done creating drivers!"
