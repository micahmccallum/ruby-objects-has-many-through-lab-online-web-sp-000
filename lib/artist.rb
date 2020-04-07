require 'pry'
class Artist
  attr_accessor :name, :genre

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

    song = Song.new(name, self, genre)
    song
  end

  def genres
    artist_genres = []
    self.songs.each do |song|
      artist_genres << song.genre unless artist_genres.include?(song.genre)
    end
    artist_genres

  end
end
