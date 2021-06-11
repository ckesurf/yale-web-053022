require_relative "../config/environment.rb"

a1 = Artist.new("Dani", 30)
a2 = Artist.new("Margaret", 25)
a3 = Artist.new("Kyle", 10)

g1 = Gallery.new("Le Louvre", "Paris")
g2 = Gallery.new("MET", "NYC")

p1 = Painting.new("Raffy", 9999, a1, g1)
p2 = Painting.new("Sky", 1000, a2, g1)
p4 = Painting.new("Grass Fields", 800, a2, g1)
p3 = Painting.new("Blue", 200, a2, g2)
p5 = Painting.new("Road", 900, a3, g2)

binding.pry

puts "Bob Ross rules."
