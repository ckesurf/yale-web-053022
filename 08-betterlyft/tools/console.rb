require_relative "../config/environment.rb"
require "pry"

def reload
  load "config/environment.rb"
end

binding.pry
