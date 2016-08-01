class Song
  #song belongs to genre and song belongs to artist
  #artist needed because Artist class contains: song.artist = self
  attr_accessor :genre, :artist, :name


  #initialized with genre object
  def initialize(name, genre)
    @name = name
    #this creates the genre instance variable accessed above
    @genre = genre
    #associates the song instance to the genre passed in as an argument
    #this accesses the add_song method from the genre object - see Genre class
    genre.add_song(self)
  end
end
