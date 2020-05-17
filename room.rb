require('pry')

class Room
  attr_reader :theme, :entrance_fee
  attr_accessor :number_of_guests, :playlist, :till
def initialize(theme)
@theme = theme
@number_of_guests = []
@playlist = []
#@till = 0
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



def entrance_fees
  @guest1.pay_entrance_fee
  add_money_till(@room1)
end

# I had a problem here with converting @playlist to array of hashes. Would like to see a solution for:
#for song in @playlist
#    if song[:title] == guest.favourite_song ---> this was throwing an error undefined method for song

def play_fav_song(guest)
    if @playlist.include?(guest.favourite_song)
    end
    return "Whoo!"
end



end
