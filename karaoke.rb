class Karaoke

attr_reader :room_name, :fee, :capacity, :genre, :till, :playlist, :guests
attr_writer :capacity, :till, :guests

def initialize(room_name, fee, genre, till, playlist, capacity)
  @room_name = room_name
  @fee = fee
  @guests = []
  @capacity = capacity
  @genre = genre
  @till = till
  @playlist = playlist
end

def of_age?(guest)
  if guest.age >= 18
    return true
  end
  return false
end


def add_guest(guest)
  if guest.wallet >= @fee && guest.age >= 18 && !at_capacity()
    @guests.push(guest)
  end
end

def remove_guest(guest)
    @guests.delete(guest)
end

def at_capacity()
  if @capacity == @guests.count
    return true
  end
  return false
end


def add_playlist(guest)
  if guests.count >= 1
    @playlist.push(song)
  end
end

def remove_playlist(playlist)
  if guests.count == 0
    @playlist.delete(playlist)
  end
end




end
