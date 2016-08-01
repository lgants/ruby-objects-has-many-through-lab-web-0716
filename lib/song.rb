class Song
  attr_accessor :genre, :artist  ,:name

  def initialize(name, genre)
    @name = name
    @genre = genre
    #associates the song to the genre passed in as an argument
    genre.add_song(self)
  end
end
