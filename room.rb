class Room

  attr_reader :room_name

  def initialize(room_name)
    @room_name = room_name
    @playlist = []
    @guests = []
  end

  def add_song_to_playlist(song)
    @playlist.push(song)
  end

end
