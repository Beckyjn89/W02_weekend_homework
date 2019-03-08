require("minitest/autorun")
require("minitest/rg")
require_relative("../room")
require_relative("../song")
require_relative("../guest")

class TestRoom < MiniTest::Test

  def setup
    @room_01 = Room.new("Room 1")

    @song_01 = Song.new("Bohemian Rhapsody", "Queen")
    @song_02 = Song.new("Hey Jude", "The Beatles")
    @song_03 = Song.new("Thank u, next", "Ariana Grande")

    @guest_01 = Guest.new("Freda")
    @guest_02 = Guest.new("Benny")
  end

  def test_does_room_exist
    assert_equal("Room 1", @room_01.room_name)
  end

  def test_add_song_to_playlist
    @room_01.add_song_to_playlist(@song_01)
    actual = @room_01.playlist
    assert_equal([@song_01], actual)
  end

  def test_add_guest_to_room
    @room_01.add_guest_to_room(@guest_01)
    actual = @room_01.guests
    assert_equal([@guest_01], actual)
  end

  def test_remove_guest_from_room
    @room_01.add_guest_to_room(@guest_01)
    @room_01.add_guest_to_room(@guest_02)
    assert_equal([@guest_01, @guest_02], @room_01.guests)

    @room_01.remove_guest_from_room(@guest_01)
    actual = @room_01.guests
    assert_equal([@guest_02], actual)
  end
  
end
