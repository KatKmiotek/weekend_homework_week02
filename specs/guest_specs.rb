require('minitest/autorun')
require('minitest/reporters')
require_relative('../guest')
require_relative('../room')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new
class TestGuest < MiniTest::Test
  def setup()
    @guest1 = Guest.new("Paul", 10)
    @room1 = Room.new("The best of Britney")
  end







end