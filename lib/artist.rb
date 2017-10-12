class Artist
  attr_accessor :name, :songs

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    self.songs << song
    song.artist = self
  end

  def genres
    genres = []
    self.songs.each do |song|
      genres << song.genre if !genres.include?(song.genre)
    end
    genres
  end

end
