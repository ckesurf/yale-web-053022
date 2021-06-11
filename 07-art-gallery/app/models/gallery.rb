class Gallery
  attr_reader :name, :city
  @@all = []

  def initialize(name, city)
    @name = name
    @city = city

    @@all << self
  end

  def paintings
    Painting.all.select { |painting| painting.gallery == self }
  end

  def artists
    self.paintings.map { |painting| painting.artist }
  end

  def artist_names
    self.artists.map { |artist| artist.name }.uniq
  end

  def most_expensive_painting
    self.paintings.max_by { |painting| painting.price }
  end
end
