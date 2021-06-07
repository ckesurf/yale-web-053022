require "pry"

# print 'Hello one!'
# print 'Hello two!'
# puts "Hello with puts one"
# puts "Hello with puts two"

PAPER = "lined paper please" # constant variable; do not re-assign constants!

# Data types in Ruby
# string
raffy = "yes"
another_string = "Yes as well"

# integers
a_number = 1

# bignum

# floats
apples = 2.5

# symbols
sym_example = :cheese

# boolean
is_cool = true
is_lunch_time = false

# nil
beef = nil

# array
arr = []

# hash

# my_hash = {
#   "raffy" => "cool",
#   "toys_array" => ["ball", "bone", "squeaky toy"],
#   :water => true,
#   :nice_weather => 'sun and more sun'
# }

my_other_hash = {
  raffy: "Raffy is a doggo", # key is a symbol
  michelle: "My bff is Raffy",
}

def say_hello(name)
  puts "Hello there, #{name}"
  5 # implicit return
  #   return 5
end

binding.pry
