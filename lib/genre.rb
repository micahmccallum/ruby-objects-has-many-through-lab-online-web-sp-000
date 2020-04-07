class Genre
  attr_accessor :name, :artist, :songs

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def songs
    Songs.all.select { |song| song.genre == self }
  end
end
