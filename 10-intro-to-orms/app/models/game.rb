class Game
  attr_accessor :id, :title, :genre, :price

  # REPLACE WITH DB
  # @@all = []

  def initialize(id, title, genre, price)
    @id = id
    @title = title
    @genre = genre
    @price = price

    # REPLACE WITH DB
    # @@all << self
  end

  def self.all
    # REPLACE WITH DB
    # @@all

    sql = "SELECT * FROM games;"
    results = DB[:conn].execute(sql)

    results.map do |game_hash|
      Game.new(game_hash["id"], game_hash["title"], game_hash["genre"], game_hash["price"])
    end
  end

  def save
    sql = "INSERT INTO games (title, genre, price) values (?, ?, ?)"
    DB[:conn].execute(sql, self.title, self.genre, self.price)
    Game.all.last.id
  end
end
