require 'pry'

class Song
  extend Memorable # extend is for adding methods to the class, but not instance
  extend Findable 
  include Paramable # include is for adding methods only to an instance
  
  attr_accessor :name
  attr_reader :artist

  @@songs = []

  def initialize
    Song.all << self
  end

  def self.find_by_name(name)
    @@songs.detect{|a| a.name == name}
  end

  def self.all
    @@songs
  end

  def artist=(artist)
    @artist = artist
  end

end
