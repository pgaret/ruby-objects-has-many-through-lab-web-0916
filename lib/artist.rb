class Artist

  attr_reader :name, :songs, :genres

  def initialize(name)
    @name = name
    @songs = []
    @genres = []
  end

  def add_song(song)
    if !@songs.include?(song) then
      @songs << song
      song.artist = self
    end
    if !@genres.include?(song.genre) then
      @genres << song.genre
      song.genre.songs << song
    end
  end

end
