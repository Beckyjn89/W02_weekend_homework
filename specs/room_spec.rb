require("minitest/autorun")
require("minitest/rg")
require_relative("../room")
require_relative("../song")

class TestRoom < MiniTest::Test

  def setup
    @room_01 = Room.new("Room 1")
  end

  def test_does_room_exist
    assert_equal("Room 1", @room_01.room_name)
  end

end
