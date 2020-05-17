require('minitest/autorun')
require('minitest/reporters')
require_relative('../guest')
require_relative('../karaoke')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new
class TestGuest < MiniTest::Test

  def setup()
    @guest1 = Guest.new("Matt", 30, 50)
    @guest2 = Guest.new("Kevin", 32, 30)
    @guest3 = Guest.new("Bob", 17, 40)

    @guests = [@guest1, @guest2, @guest3]
  end

def test_guest_name
  assert_equal("Matt", @guest1.name)
end

def test_guest_age
  assert_equal(30, @guest1.age)
end

def test_guest_has_funds
  assert_equal(50, @guest1.wallet)
end

# def test_can_guest_visit_bar_enough_cash
#   @guest.admit(@room1)
#   assert_equal(45, @guest.wallet)
# end

# def test_in_the_money()
#   assert_equal(true, @guest1.in_the_money?(@room1))
# end



end
