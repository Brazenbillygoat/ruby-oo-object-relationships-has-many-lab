require 'pry'
require_relative './artist.rb'

class Song

  attr_accessor :name, :artist

  @@song_list = []

  def initialize(name)
    @name = name
    @@song_list.push(self)
  end

  def self.all
    @@song_list
  end

end

# adele = Artist.new("Adele")
# hello = Song.new("Hello")
# hello.artist = adele
# Song.all