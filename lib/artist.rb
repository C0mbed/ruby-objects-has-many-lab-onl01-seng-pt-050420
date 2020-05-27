
require 'pry'
class Artist

  attr_accessor :name
  
  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    song.artist = self
  end

  def add_song_by_name(song_name)
    song = Song.new(song_name)
    add_song(song)
    song.artist = self
  end

  def songs
    @songs
  end

  def self.song_count
  end

end
