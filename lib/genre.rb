class Genre 
  
  attr_accessor :name 
  
  def initialize(name)
    @name = name 
    @@all << self 
  end 
  
  @@all = [] 
  
  def all 
    @@all 
  end 
  
  def songs 
    my_songs = Song.all.select do |song|
      song.genre == self 
    end 
    my_songs
  end
  
  def artists 

    my_songs = self.songs
    my_artists = self.my_songs.collect do |song|
      song.artist 
    end 
    my_artists
  end
  
end
    