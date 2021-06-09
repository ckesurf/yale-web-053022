require "pry"
require_relative "models/user.rb"
require_relative "models/tweet"

u1 = User.new("coffee_dad", "a common dad who loves coffee")
u2 = User.new("michelleRios", "amazing instructor who loves Raffy")
u3 = User.new("secret_lizard", "infiltrating a government near you")
u4 = User.new("doemahamud", "chill guy (:")
u5 = User.new("kanyewest", ".")

t1 = Tweet.new("drinking coffee", u1)
t2 = Tweet.new("love coffee", u1)
t3 = Tweet.new("more coff", u1)
t4 = Tweet.new("teaching...", u2)
t5 = Tweet.new("can't tell you....", u3)
t6 = Tweet.new("I love Ruby", u4)
t7 = Tweet.new("Writing some music", u5)
t8 = Tweet.new("Running for president soon", u5)

binding.pry
