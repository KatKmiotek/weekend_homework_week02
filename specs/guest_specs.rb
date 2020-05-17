require('minitest/autorun')
require('minitest/reporters')
require_relative('../guest')
require_relative('../room')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new
class TestGuest < MiniTest::Test
  def setup()
    @guest1 = Guest.new("Paul", 10, "Toxic")
    @room1 = Room.new("The best of Britney")
  end


def test_pay_entrance_fee
  assert_equal(8, @guest1.pay_entrance_fee)
end

def test_has_favourite_song
  assert_equal("Toxic", @guest1.favourite_song)
end


end
