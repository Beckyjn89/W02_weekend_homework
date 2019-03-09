require("minitest/autorun")
require("minitest/rg")
require_relative("../guest")
require_relative("../room")
require_relative("../song")

class TestGuest < MiniTest::Test
def setup
  @guest_01 = Guest.new("Anni-Frid", 25, "Mamma Mia")
  @guest_02 = Guest.new("Benny", 20, "Bennie and the Jets")
  @guest_03 = Guest.new("Agnetha", 25, "The Winner Takes it All")
  @guest_04 = Guest.new("Bjorn", 20, "Hey Jude")
  @guest_05 = Guest.new("Freda", 4, "Total Eclipse of the Heart")

  @room_01 = Room.new("Room 1", 4)

  @song_01 = Song.new("Bohemian Rhapsody", "Queen")
  @song_02 = Song.new("Hey Jude", "The Beatles")
  @song_03 = Song.new("Total Eclipse of the Heart", "Bonnie Tyler")
  @song_04 = Song.new("The Winner Takes it All", "ABBA")
  @song_05 = Song.new("Bennie and the Jets", "Elton John")

end

# def test_customer_has_name
#   assert_equal("Anni-Frid", @guest_01.name)
# end

def test_customer_has_money
  assert_equal(20, @guest_02.wallet)
end

def test_customer_has_paid_entry_fee
  actual_return =  @guest_02.pay_entry_fee(@room_01)
  actual = @guest_02.wallet
  assert_equal(15, actual)
  assert_equal(true, @guest_02.ticket)
end

def test_customer_cant_pay_entry_fee
  actual_return = @guest_05.pay_entry_fee(@room_01)
  actual_wallet = @guest_05.wallet
  assert_equal(false, @guest_05.ticket)
  assert_equal(4, actual_wallet)
end

def test_customer_has_ticket
  actual = @guest_01.ticket
  assert_equal(true, actual)
end

def test_customer_no_ticket
  @guest_05.pay_entry_fee(@room_01)
  actual = @guest_05.ticket
  assert_equal(false, actual)
end

def test_room_has_fave_song
  @room_01.add_song_to_playlist(@song_01, @song_05)
  actual = @guest_02.room_has_fave_song(@room_01)
  assert_equal("I love Bennie and the Jets!", actual)
end

def test_room_doesnt_have_fave_song
    @room_01.add_song_to_playlist(@song_01, @song_05)
    actual = @guest_01.room_has_fave_song(@room_01)
    assert_equal("This room sucks", actual)
end

end
