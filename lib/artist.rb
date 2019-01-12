class Artist 
  
 attr_accessor :name 
 
 def initialize(name)
   @name = name 
   @@all << self 
 end
 
  @@all = []
  
  def all 
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
    my_songs = self.songs





- The `Artist` class needs an instance method, `#new_song`, that takes in an
  argument of a name and genre creates a new song. That song should know that it
  belongs to the artist.
- The `Artist` class needs an instance method, `#songs`, that iterates through all
  songs and finds the songs that belong to that artist. Try using `select` to
  achieve this.
- The `Artist` class needs an instance method, `#genres` that iterates over that
  artist's songs and collects the genre of each song.