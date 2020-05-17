require('minitest/autorun')
require('minitest/reporters')
require_relative('../bar')
require_relative('../room')
require_relative('../guest')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new
class TestBar < MiniTest::Test
  def setup()
    @room1 = Room.new("The best of Britney")
    @bar = Bar.new()
  end



  def test_money_in_till
    assert_equal(0, @bar.money_in_till)
  end

  def test_add_money_till
    @bar.add_money_till(@room1)
    assert_equal(2, @bar.money_in_till)
  end

def test_sell_snack

    assert_equal(2,@bar.money_in_till)
    assert_equal(9, @bar.sell_snack)
end




end
