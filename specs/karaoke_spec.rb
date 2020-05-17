require('minitest/autorun')
require('minitest/reporters')
require_relative('../karaoke')
require_relative('../guest')
require_relative('../song')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new
class TestKaraoke < MiniTest::Test


  def setup()
    @guest1 = Guest.new("Matt", 30, 50)
    @guest2 = Guest.new("Kevin", 32, 30)
    @guest3 = Guest.new("Bob", 17, 40)
    @guest4 = Guest.new("James", 19, 60)
    @guests = [@guest1, @guest2, @guest3, @guest4]
    @song1 = Song.new("Wonderwall", "Oasis")
    @song2 = Song.new("Rapper's Delight", "The Sugar Hill Gang")
    @song3 = Song.new("Raspberry Beret", "Prince")
    @room1 = Karaoke.new("Ace of Base", 5, "90's", 100, [@song1], 8)
    @room2 = Karaoke.new("Blue Monday", 5, "80's", 100, [@song2, @song3], 2)

    @room = [@room1, @room2]

  end

  def test_of_age
    result = @room1.of_age?(@guest1)
    assert_equal(true, result)
  end

  def test_of_age
    result = @room1.of_age?(@guest2)
    assert_equal(true, result)
  end

  def test_of_age
    result = @room1.of_age?(@guest3)
    assert_equal(false, result)
  end

  def test_get_fee
    result = @room1.fee
    result = @room2.fee
    assert_equal(5, result)
  end

  def test_room_capacity_room_1
    assert_equal(8, @room1.capacity)
  end

  def test_room_capacity_room_2
    assert_equal(2, @room2.capacity)
  end

  def test_add_guest
    @room1.add_guest(@guest1)
    assert_equal(1, @room1.guests.count)
  end

  def test_remove_guest
    @room1.add_guest(@guest1)
    @room1.remove_guest(@guest1)
    assert_equal(0, @room1.guests.count)
  end

def test_room_not_at_capacity
  assert_equal(false, @room1.at_capacity())
end

def test_room_at_capacity
  @room2.add_guest(@guest2)
  @room2.add_guest(@guest1)
  assert_equal(true, @room2.at_capacity())
end

def test_cannot_add_more_than_capacity
  @room2.add_guest(@guest2)
  @room2.add_guest(@guest1)
  @room2.add_guest(@guest4)
  assert_equal(2, @room2.guests.count)
end


def test_add_playlist_room_1
  @room1.add_playlist(@playlist)
  assert_equal(1, @room1.playlist.count)
end

def test_add_playlist_room_2
  @room2.add_playlist(@playlist)
  assert_equal(1, @room1.playlist.count)
end

def test_remove_playlist
  @room1.add_playlist(@playlist)
  @room1.remove_playlist(@playlist)
  assert_equal(1, @room1.playlist.count)
end




#create add song function

#remove add song

end
