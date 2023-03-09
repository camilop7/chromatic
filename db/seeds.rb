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
Event.destroy_all
Chatroom.destroy_all
Message.destroy_all
User.destroy_all

puts 'creating new user....'

emilie = User.create(email: "emilie@gmail.com", password: "123456")
jose = User.create(email: "jose@gmail.com", password: "123456")
alex = User.create(email: "mary@gmail.com", password: "123456")

puts "Created #{User.count} users"

# Events

puts 'creating new events....'

Event.create(
  name: "Live Aid 2023",
  address: "Wembley Arena, Arena Square, Engineers Way, London, HA9 0AA",
  date: Faker::Date.between(from: '2023-03-17', to: '2023-04-30'),
  artist: "Arctic Monkeys, The 1975, Sam Smith, Ed Sheeran, Elton John",
  photo_url: "https://www.udiscovermusic.com/wp-content/uploads/2019/07/Live-Aid-GettyImages-84999050.jpg"
)

Event.create(
  name: "Hoxton Jazz",
  address: "Troy Bar, 10 Hoxton Street, London, N1 6NG",
  date: Faker::Date.between(from: '2023-03-17', to: '2023-04-30'),
  artist: "Jazzy Dave",
  photo_url: "https://www.sciencefriday.com/wp-content/uploads/2022/12/jazz-trumpet.jpg"
)

Event.create(
  name: "Take That Live",
  address: "The O2 Arena, Peninsula Square, London SE10 0DX",
  date: Faker::Date.between(from: '2023-03-17', to: '2023-04-30'),
  artist: "Take That",
  photo_url: "https://i.ytimg.com/vi/p7bowglDeCI/maxresdefault.jpg"
)

Event.create(
  name: "Soho Nights - Cocktail Evening",
  address: "Soho Live Studios, 16 Carlisle St, London W1D 3BT",
  date: Faker::Date.between(from: '2023-03-17', to: '2023-04-30'),
  artist: "Harry Styles. George Ezra. Becky Hill. Chase & Status. Dermot Kennedy",
  photo_url: "https://imagestore.ffm.to/link/b9571b326d68208967c4e3fe4f995df1.png"
)

Event.create(
  name: "Radio 1 Big Weekend",
  address: "Camperdown Park, DundeeT",
  date: Faker::Date.between(from: '2023-03-17', to: '2023-04-30'),
  artist: "Lewis Capaldi, Niall Horan, Lewis Capaldi",
  photo_url: "https://res.cloudinary.com/dwh6m5mbn/image/upload/c_lfill,w_830/v1637052426/adadad_leozps.png"
)

#New Events
Event.create(
  name: "Summertime Ball",
  address: "Wembley Stadium, London, HA9 0WS",
  date: Faker::Date.between(from: '2023-03-17', to: '2023-04-30'),
  artist: "Arctic Monkeys, The 1975, Sam Smith, Ed Sheeran, Elton John",
  photo_url: "https://assets.capitalfm.com/2022/24/summetime-ball-shop-1655201858-editorial-long-form-0.jpg"
)

Event.create(
  name: "Glastonbury 2023",
  address: "Worthy Farm, Worthy Lane, Pilton, Shepton Mallet, Somerset, BA4 4BY",
  date: Faker::Date.between(from: '2023-03-17', to: '2023-04-30'),
  artist: "Arctic Monkeys, The 1975, Sam Smith, Ed Sheeran, Elton John",
  photo_url: "https://cms.kerrang.com/images/Glastonbury-2023-header.jpg"
)

Event.create(
  name: "Abba Voyage",
  address: "1 Pudding Mill Lane, London, E15 2RU",
  date: Faker::Date.between(from: '2023-03-17', to: '2023-04-30'),
  artist: "Abba",
  photo_url: "https://images.discovery-prod.axs.com/2022/04/abba-voyage-tickets_04-28-22_17_626abddb9be2d.jpg"
)

Event.create(
  name: "Wireless Festival 2023",
  address: "Finsbury Park, London",
  date: Faker::Date.between(from: '2023-03-17', to: '2023-04-30'),
  artist: "Arctic Monkeys, The 1975, Sam Smith, Ed Sheeran, Elton John",
  photo_url: "https://media.timeout.com/images/105052183/image.jpg"
)

Event.create(
  name: "Penn Fest 2023",
  address: "Penn, Amersham, HP7 0PS",
  date: Faker::Date.between(from: '2023-03-17', to: '2023-04-30'),
  artist: "Arctic Monkeys, The 1975, Sam Smith, Ed Sheeran, Elton John",
  photo_url: "https://cdn2.gigantic.com/static/images/campaign/820x500/penn_festival-6710228453.jpg"
)

puts "Created #{Event.count} events"

# Event Chatrooms

puts 'creating new chatrooms....'
soho_nights_chatroom = Chatroom.create(
  name: "Radio 1 Big Weekend",
)

big_weekend_chatroom = Chatroom.create(
  name: "Soho Nights - Cocktail Evening"
)

take_that_chatroom = Chatroom.create(
  name: "Take That Live"
)

puts "Created #{Chatroom.count} chatrooms"

# Messages

puts 'creating new messages....'
Message.create(
  content: "I am buzzing",
  chatroom_id: big_weekend_chatroom.id,
  user_id: jose.id
)

Message.create(
  content: "Can't wait to go to this event!",
  chatroom_id: soho_nights_chatroom.id,
  user_id: emilie.id
)

Message.create(
  content: "I have been excited for so long now!",
  chatroom_id: take_that_chatroom.id,
  user_id: alex.id
)

puts "Created #{Message.count} messages"
