class Guest
  attr_reader :wallet, :ticket, :fave_song

  def initialize(name, wallet, fave_song)
    @name = name
    @wallet = wallet
    @ticket = false
    @fave_song = fave_song
  end

  def pay_entry_fee(room)
    if ((@wallet - room.entry_fee) >= 0)
      @wallet -= room.entry_fee
      @ticket = true
    end
  end

  def room_has_fave_song(room)
    room_has_song = ""
      for song in room.playlist
        if song.title == @fave_song
          room_has_song = "I love #{@fave_song}!"
        else
          room_has_song = "This room sucks"
        end
      end
    return room_has_song
  end

def buy_drink(bar, drink)
  if ((@wallet - bar.check_drink_price(drink)) >= 0)
    (@wallet -= bar.check_drink_price(drink))
  end
end

end
