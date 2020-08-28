require 'pry'
require_relative './artist.rb'

class Song

  attr_accessor :name, :artist

  @@all = []

  def initialize(name)
    @name = name
    @@all.push(self)
  end

  def self.all
    @@all
  end

  def artist_name
    self.artist ? self.artist.name : nil
  end

end

# adele = Artist.new("Adele")
# hello = Song.new("Hello")
# hello.artist = adele
# Song.all