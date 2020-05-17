require('minitest/autorun')
require('minitest/reporters')
require_relative('../song')
require_relative('../karaoke')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new
class TestSong < MiniTest::Test


  def setup()
    @song1 = Song.new("Wonderwall", "Oasis" )
    @song2 = Song.new("Rapper's Delight", "The Sugar Hill Gang")
    @song3 = Song.new("Raspberry Beret", "Prince")

  end


def test_song_name
  assert_equal("Wonderwall", @song1.song)
end

def test_artist_name
  assert_equal("The Sugar Hill Gang", @song2.artist)
end

def test_play_song
  result = @room1.play(@song1)
  assert_equal("Wonderwall", result)
end







end
