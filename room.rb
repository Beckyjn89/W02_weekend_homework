class Room

  attr_reader :room_name, :playlist, :guests, :entry_fee, :till

  def initialize(room_name, capacity)
    @room_name = room_name
    @playlist = []
    @guests = []
    @capacity = capacity
    @entry_fee = 5
    @till = 0
  end

  def add_song_to_playlist(*song)
    @playlist.push(*song)
  end

  def guest_entry_permitted?(guest)
    guest.pay_entry_fee(self)
    if guest.ticket == true && room_is_full? == false
      return true
    else
      return false
    end
  end

  def add_guest_to_room(guest)
    if guest_entry_permitted?(guest) == true
      @guests.push(guest)
      @till += @entry_fee
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

def customer_buys_drink(guest, bar, drink)
  guest.buy_drink(bar, drink)
  @till += bar.check_drink_price(drink)
end

end
