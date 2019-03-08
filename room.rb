class Room

  attr_reader :room_name, :playlist, :guests


  def initialize(room_name, capacity)
    @room_name = room_name
    @playlist = []
    @guests = []
    @capacity = capacity
  end

  def add_song_to_playlist(song)
    @playlist.push(song)
  end

  def add_guest_to_room(guest)
    unless room_is_full?() == true
      @guests.push(guest)
    end
  end

  def remove_guest_from_room(guest_to_boot)
    @guests.delete_if { |guest| guest == guest_to_boot }
  end

  def room_is_full?
   if @guests.length >= @capacity
     return true
   else
     return false
   end
  end


end
