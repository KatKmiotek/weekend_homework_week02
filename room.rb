class Room
  attr_reader :theme, :entrance_fee
  attr_accessor :number_of_guests, :playlist, :till
def initialize(theme)
@theme = theme
@number_of_guests = []
@playlist = []
@till = 0
@entrance_fee = 2
end

def add_guest_to_room(guest)
    @number_of_guests.push(guest)
end

def remove_guest_from_room
    @number_of_guests.pop
    return @number_of_guests.count
end

def add_song_to_playlist(song)
  @playlist.push(song)
end

def room_capacity
  capacity = @number_of_guests.count
  if capacity >= 5
    return "Sorry, room is full"
  elsif capacity == 4
    return "One more spot left"
  else
  return "All welcome"
  end
end

def money_in_till
  return till
end

def add_money_till(room)
  @till += room.entrance_fee
end

def entrance_fees
  @guest1.pay_entrance_fee
  add_money_till(@room1)
end


end
