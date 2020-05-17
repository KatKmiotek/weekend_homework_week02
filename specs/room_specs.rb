require('minitest/autorun')
require('minitest/reporters')
require_relative('../room')
require_relative('../guest')
require_relative('../song')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new
class TestRoom < MiniTest::Test
  def setup()
    @room1 = Room.new("The best of Britney")
    @room2 = Room.new("The best of Death by Audio")
    @guest1 = Guest.new("Paul", 20, @song1)
    @guest2 = Guest.new("Sue", 50, @song2)
    @song1 = Song.new("OOps! I did it again", "Britney Spears")
    @song2 = Song.new("Toxic", "Britney Spears")
    @song3 = Song.new("Crazy", "Britney Spears")
  end

  def test_name
    assert_equal("The best of Britney", @room1.theme)
  end

  def test_number_of_guests
    assert_equal(0, @room1.number_of_guests.count)
  end


  def test_add_guest_to_room
    @room1.add_guest_to_room(@guest1)
    assert_equal(1, @room1.number_of_guests.count)
  end


  def test_remove_guest_from_room
    @room1.add_guest_to_room(@guest1)
    @room1.add_guest_to_room(@guest2)
    assert_equal(1, @room1.remove_guest_from_room)
  end

  def test_playlist
    assert_equal(0, @room1.playlist.count)
  end

  def test_add_song_to_playlist
    @room1.add_song_to_playlist(@song1)
    assert_equal(1, @room1.playlist.count)
  end

  def test_room_full
    @room1.add_guest_to_room(@guest1)
    @room1.add_guest_to_room(@guest2)
    @room1.add_guest_to_room(@guest1)
    @room1.add_guest_to_room(@guest2)
    @room1.add_guest_to_room(@guest1)
    @room1.add_guest_to_room(@guest2)
    assert_equal("Sorry, room is full", @room1.room_capacity)
  end

  def test_room_not_full
    @room1.add_guest_to_room(@guest1)
    @room1.add_guest_to_room(@guest2)
    @room1.add_guest_to_room(@guest1)
    @room1.add_guest_to_room(@guest2)
    assert_equal("One more spot left", @room1.room_capacity)
  end

  def test_room_empty
    assert_equal("All welcome", @room1.room_capacity)
  end

  def test_money_in_till
    assert_equal(0, @room1.money_in_till)
  end

  def test_add_money_till
    @room1.add_money_till(@room1)
    assert_equal(2, @room1.money_in_till)
  end

  def test_entrance_fees
    assert_equal(2, @room1.add_money_till(@room1))
    assert_equal(18, @guest1.pay_entrance_fee)
  end

  def test_play_fav_song
    @room1.add_song_to_playlist(@song1)
    @room1.add_song_to_playlist(@song2)
    @room1.add_song_to_playlist(@song3)
    @room1.add_guest_to_room(@guest1)
    assert_equal("Whoo!", @room1.play_fav_song(@guest1))
  end











end
