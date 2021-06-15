class Game
  attr_accessor :id, :title, :genre, :price

  @@all = []

  def initialize(id, title, genre, price)
    @id = id
    @title = title
    @genre = genre
    @price = price

    @@all << self
  end

  def self.all
    @@all
  end
end
