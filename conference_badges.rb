def badge_maker(name)
  "Hello, my name is #{name}."
end

def batch_badge_creator(attendees)
  badges = []
  attendees.each do |i|
    badges.push(badge_maker(i))
  end
  badges
end

def assign_rooms(attendees)
  room_assignments = {}
  attendees.each.with_index(1) do |name,room|
    if room <= 7
      room_assignments[:"#{name}"] = room
    else
      room_assignments[:"#{name}"] = room % 7
    end
  end

temp = []
room_assignments.each do |name, room|
  temp.push("Hello, #{name}! You'll be assigned to room #{room}!")
end

temp
end

def printer(attendees)
  badges = batch_badge_creator(attendees)
  badges.zip(assign_rooms(attendees))

  binding.pry
end
