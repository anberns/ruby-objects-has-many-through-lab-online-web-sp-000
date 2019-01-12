class Artist 
  
 attr_accessor :name, :songs
 
 def initialize(name)
   @name = name 
   @songs = []
   @@all << self 
 end
 
  @@all = []
  
  def self.all 
    @@all 
  end 
  
  def new_song(name, genre)
    song = Song.new(name)
    song.genre = genre 
    song.artist = self 
  end 
  
  def songs
    my_songs = Song.all.select do |song|
      song.artist = self 
    end 
    my_songs
  end
  
  def genres 
    my_genres = self.songs.collect do |song|
      song.genre 
    end 
    my_genres
  end
  
end
  