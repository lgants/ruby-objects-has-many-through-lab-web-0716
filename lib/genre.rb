class Genre
  attr_accessor :name, :artists, :songs

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    self.songs << song
    song.genre = self
  end

  #has many through
  def artists
    self.songs.collect {|song| song.artist}
  end
end
