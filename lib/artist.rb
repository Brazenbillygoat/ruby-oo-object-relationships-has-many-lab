require 'pry'

class Artist

  attr_accessor :name, :artist

  

  def initialize(name)
    @name = name
  end

  def songs
    Song.all
  end

  def add_song(song_name)
    Song.all.each do |song|
      if song.name == song_name.name
        song.artist = self
      end
    end
  end

  def add_song_by_name(song_name)
    Song.new(song_name)
    Song.all.each do |song|
      if song.name == song_name
        song.artist = self
      end
    end
  end

  def self.song_count
    Song.all.count
  end


end
