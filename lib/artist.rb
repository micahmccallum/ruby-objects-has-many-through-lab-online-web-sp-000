class Artist
  attr_accessor :name, :genres

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def songs
    Song.all.select { |song| song.artist == self }
  end

  def new_song(name, genre = "")
    binding.pry
    Song.new(name, self.name, genre)
  end
end
