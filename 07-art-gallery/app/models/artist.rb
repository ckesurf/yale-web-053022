class Artist
  attr_reader :name, :years_experience
  @@all = []

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience

    @@all << self
  end

  def self.all
    @@all
  end

  def self.total_experience
    self.all.reduce(0) do |sum, artist|
      sum + artist.years_experience
    end
  end

  def self.most_prolific
    # self.all.max_by do |artist|
    #   artist.paintings.length.to_f / artist.years_experience
    # end

    self.all.max do |artist1, artist2|
      artist1.paintings.length.to_f / artist1.years_experience <=> artist2.paintings.length.to_f / artist2.years_experience
    end
  end

  def paintings
    Painting.all.select { |painting| painting.artist == self }
  end

  def galleries
    self.paintings.map { |painting| painting.gallery }
  end

  def cities
    self.galleries.map { |gallery| gallery.city }.uniq
  end

  def create_paintings(title, price, gallery)
    Painting.new(title, price, self, gallery)
  end
end
