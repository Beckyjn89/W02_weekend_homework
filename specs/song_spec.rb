require("minitest/autorun")
require("minitest/rg")
require_relative("../song")

class TestSong < MiniTest::Test

  def setup
    @song_01 = Song.new("Bohemian Rhapsody", "Queen")
    @song_02 = Song.new("Hey Jude", "The Beatles")
    @song_03 = Song.new("Thank u, next", "Ariana Grande")
  end

  def test_song_exists
    assert_equal("Hey Jude", @song_02.title)
  end

  def test_artist_exists
    assert_equal("Ariana Grande", @song_03.artist)
  end

end
