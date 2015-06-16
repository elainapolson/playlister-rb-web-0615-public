# code genre here

class Genre

  attr_accessor :name, :songs, :artists

  @@Genres = []

  def initialize
    @songs = []
    @artists = []
    @@Genres << self
  end

  def songs
    @songs
  end

  def self.all
    @@Genres
  end

  def self.reset_genres
    self.all.clear
  end

  def self.count
    self.all.size
  end

end