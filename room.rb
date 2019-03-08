class Room

  attr_reader :room_name, :playlist, :guests


  def initialize(room_name)
    @room_name = room_name
    @playlist = []
    @guests = []
  end

  def add_song_to_playlist(song)
    @playlist.push(song)
  end

  def add_guest_to_room(guest)
    @guests.push(guest)
  end

  def remove_guest_from_room(guest_to_boot)
    @guests.delete_if { |guest| guest == guest_to_boot }

  end

end
