require "pry"

class Car
  attr_reader :model, :year, :color # creates getter methods
  attr_writer :miles, :mpg, :license_plate # creates setter methods
  attr_accessor :brand # creates GETTER AND SETTER methods

  #   binding.pry # self outside of any instance method is always the class itself
  @@number_of_cars = 0

  def initialize(brand, model, miles, year, color, license_plate, mpg)
    @brand = brand
    @model = model
    @miles = miles
    @year = year
    @color = color
    @license_plate = license_plate
    @mpg = mpg

    # binding.pry # self inside of here is always the instance that's being created
    @@number_of_cars = @@number_of_cars + 1
  end

  #   def Car.number_of_cars
  #     @@number_of_cars
  #   end

  #   binding.pry # inspect what self is -> always going to be Car, the class
  def self.number_of_cars
    @@number_of_cars
    binding.pry # self inside of a class method will be the car
  end

  #   def number_of_cars
  #     @@number_of_cars
  #   end

  # instance method - can only be called on by an instance, self is the instance who we called the method on
  def show_off_car
    # puts "My car is awesome. It's a #{@brand} #{@model}. I got it in the year #{@year}!" # directly accesing the isntance variables
    # puts "My car is awesome. It's a #{brand} #{model}. I got it in the year #{year}!" # implicit self
    puts "My car is awesome. It's a #{self.brand} #{self.model}. I got it in the year #{self.year}!" # explicit self
  end

  # getter/reader instance method
  #   def brand
  #     @brand
  #   end

  #   def miles
  #     @miles
  #   end

  #   def mpg
  #     @mpg
  #   end

  # setter/writer instance method
  #   def miles=(new_miles)
  #     @miles = new_miles
  #   end
end

# these are instances/objects of the Car class
c1 = Car.new("mazda", "cx5", 500, 2021, "space grey", "iuyh863", 26)
c2 = Car.new("chevy", "camaro", 1000, 2021, "red", "987hlkj", 30)
c3 = Car.new("honda", "civic", 500, 2021, "purple", "iuyh863", 31)
c4 = Car.new("hyundai", "sonata", 500, 2003, "silver", "iu982", 28)

binding.pry
