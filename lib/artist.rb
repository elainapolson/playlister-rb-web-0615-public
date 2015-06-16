# code artist here

class Artist

  attr_accessor :name, :songs, :genres

  @@Artists = []

  def initialize
    @songs = []
    @genres = []
    @@Artists << self
  end

  def add_song(song)
    self.songs << song
    if song.genre 
      self.genres << song.genre
      if !song.genre.artists.include?(self)
        song.genre.artists << self
      end
    end
  end

  def count
    self.songs.length
  end

  def self.all
    @@Artists
  end

  def self.reset_artists
    self.all.clear
  end

  def self.count
    self.all.length
  end 

end