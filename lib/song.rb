class Song
  attr_accessor :name, :artist, :genre

  @@all = []

  def initialize(title, genre = "")
    @title = title
    @genre = genre
    @@all << self
  end


end
