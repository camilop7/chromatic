# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require "faker"

# Users

puts 'destroying all the tables..'
puts '-----------------------'
puts '-----------------------'
puts '-----------------------'
User.destroy_all
Event.destroy_all
EventChatroom.destroy_all
Message.destroy_all

puts 'creating new user....'

emilie = User.create(email: "emilie@gmail.com", password: "123456")
jose = User.create(email: "jose@gmail.com", password: "123456")
alex = User.create(email: "mary@gmail.com", password: "123456")

puts "Created #{User.count} users"

# Events

puts 'creating new events....'

liveAid = Event.create(
  name: "Live Aid 2023",
  address: "Wembley Arena, Arena Square, Engineers Way, London, HA9 0AA",
  date: Faker::Date.between(from: '2023-03-17', to: '2023-04-30'),
  artist: "Arctic Monkeys, The 1975, Sam Smith, Ed Sheeran, Elton John",
  photo_url: "https://www.guidetolondon.net/wp-content/uploads/Wembley-Arena.jpg"
)

jazzNight = Event.create(
  name: "Hoxton Jazz",
  address: "Troy Bar, 10 Hoxton Street, London, N1 6NG",
  date: Faker::Date.between(from: '2023-03-17', to: '2023-04-30'),
  artist: "Jazzy Dave",
  photo_url: "https://www.guidetolondon.net/wp-content/uploads/Wembley-Arena.jpg"
)

take_that = Event.create(
  name: "Take That Live",
  address: "The O2 Arena, Peninsula Square, London SE10 0DX",
  date: Faker::Date.between(from: '2023-03-17', to: '2023-04-30'),
  artist: "Take That",
  photo_url: "https://www.guidetolondon.net/wp-content/uploads/Wembley-Arena.jpg"
)

soho_nights = Event.create(
  name: "Soho Nights - Cocktail Evening",
  address: "Soho Live Studios, 16 Carlisle St, London W1D 3BT",
  date: Faker::Date.between(from: '2023-03-17', to: '2023-04-30'),
  artist: "Harry Styles. George Ezra. Becky Hill. Chase & Status. Dermot Kennedy",
  photo_url: "https://www.guidetolondon.net/wp-content/uploads/Wembley-Arena.jpg"
)

big_weekend = Event.create(
  name: "Radio 1 Big Weekend",
  address: "Camperdown Park, DundeeT",
  date: Faker::Date.between(from: '2023-03-17', to: '2023-04-30'),
  artist: "Lewis Capaldi, Niall Horan, Lewis Capaldi",
  photo_url: "https://www.guidetolondon.net/wp-content/uploads/Wembley-Arena.jpg"
)

puts "Created #{Event.count} events"

# Event Chatrooms

puts 'creating new chatrooms....'
soho_nights_chatroom = EventChatroom.create(
  name: "Radio 1 Big Weekend",
  event_id: soho_nights.id,
  user_id: emilie.id
)

big_weekend_chatroom = EventChatroom.create(
  name: "Soho Nights - Cocktail Evening",
  event_id: big_weekend.id,
  user_id: jose.id
)

take_that_chatroom = EventChatroom.create(
  name: "Take That Live",
  event_id: take_that.id,
  user_id: alex.id
)

puts "Created #{EventChatroom.count} chatrooms"

# Messages

puts 'creating new messages....'
message1 = Message.create(
  content: "I am buzzing",
  event_chatroom_id: big_weekend_chatroom.id,
  user_id: jose.id
)

message2 = Message.create(
  content: "Can't wait to go to this event!",
  event_chatroom_id: soho_nights_chatroom.id,
  user_id: emilie.id
)

message3 = Message.create(
  content: "I have been excited for so long now!",
  event_chatroom_id: take_that_chatroom.id,
  user_id: alex.id
)

puts "Created #{Message.count} messages"
