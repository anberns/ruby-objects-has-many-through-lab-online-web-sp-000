class Artist 
  
 attr_accessor :name
 
 def initialize(name)
   @name = name 
   @@all << self 
 end
 
  @@all = []
  
  def self.all 
    @@all 
  end 
  
  def new_song(name, genre)
    song = Song.new(name, self, genre)
  end 
  
  def songs
    my_songs = Song.all.select do |song|
      song.artist = self 
    end 
    my_songs
  end
  
  def genres
    my_songs = self.songs
    my_genres = my_songs.map do |song|
      song.genre 
    end 
    my_genres
  end
  
end
  
