class Song 
  
  attr_accessor :name, :artist, :genre 
  
  def intialize(name, artist, genre)
    @name = name
    @artist = artist 
    @genre = genre 
    @@all << self
  end
 
  @@all = []
  
  def all
    @@all 
  end 
  
end