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
    Song.all.select { |song| song.genre == self }
  end

  def artists
    genre_artists = []
    self.songs.each do |song|
      genre_artists << song.artist unless genre_artists.include?(song.artist)
    end
    genre_artists
  end
end
