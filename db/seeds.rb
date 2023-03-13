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
Message.destroy_all
Event.destroy_all
Chatroom.destroy_all
User.destroy_all

puts 'creating new user....'

emilie = User.create(email: "emilie@gmail.com", password: "123456", name: "Timmy C", avatar_img: "https://upload.wikimedia.org/wikipedia/commons/e/e1/%D0%A2%D0%B8%D0%BC_%D0%9A%D1%83%D0%BA_%2802-09-2021%29.jpg")
jose = User.create(email: "jose@gmail.com", password: "123456", name: "Bill Gates", avatar_img: "https://imageio.forbes.com/specials-images/imageserve/62d599ede3ff49f348f9b9b4/0x0.jpg?format=jpg&crop=821,821,x155,y340,safe&height=416&width=416&fit=bounds")
alex = User.create(email: "alex@gmail.com", password: "123456", name: "J Bezos", avatar_img: "https://imageio.forbes.com/specials-images/imageserve/5bb22ae84bbe6f67d2e82e05/0x0.jpg?format=jpg&crop=1012,1013,x627,y129,safe&height=416&width=416&fit=bounds")
camilo = User.create(email: "camilo@camilo.com", password: "123456", name: "Elon the Great", avatar_img: "https://upload.wikimedia.org/wikipedia/commons/thumb/3/34/Elon_Musk_Royal_Society_%28crop2%29.jpg/1200px-Elon_Musk_Royal_Society_%28crop2%29.jpg")

puts "Created #{User.count} users"

# Events

puts 'creating new events....'

event1 = Event.create(
  name: "Live Aid 2023",
  address: "London, HA9 0AA",
  date: Faker::Date.between(from: '2023-03-17', to: '2023-04-30'),
  artist: "Arctic Monkeys, The 1975, Sam Smith, Ed Sheeran, Elton John",
  photo_url: "https://www.udiscovermusic.com/wp-content/uploads/2019/07/Live-Aid-GettyImages-84999050.jpg",
  description: "Welcome to our exciting music event, where you'll experience the joy of live music! Our event features an amazing lineup of talented musicians who will take the stage and captivate you with their incredible performances. From soulful ballads to upbeat pop tunes, our event has something for everyone. Our state-of-the-art sound system and lighting will transport you to another world as you immerse yourself in the rhythm and energy of the music. Whether you're a die-hard fan of a particular artist or simply looking to discover new sounds, our music event promises to be an unforgettable experience that you'll cherish for years to come. So come join us, let your hair down, and get ready to dance the night away!"
)

event2 = Event.create(
  name: "Hoxton Jazz",
  address: "Troy Bar, 10 Hoxton Street, London, N1 6NG",
  date: Faker::Date.between(from: '2023-03-17', to: '2023-04-30'),
  artist: "Jazzy Dave",
  photo_url: "https://www.sciencefriday.com/wp-content/uploads/2022/12/jazz-trumpet.jpg",
  description: "Welcome to our exciting music event, where you'll experience the joy of live music! Our event features an amazing lineup of talented musicians who will take the stage and captivate you with their incredible performances. From soulful ballads to upbeat pop tunes, our event has something for everyone. Our state-of-the-art sound system and lighting will transport you to another world as you immerse yourself in the rhythm and energy of the music. Whether you're a die-hard fan of a particular artist or simply looking to discover new sounds, our music event promises to be an unforgettable experience that you'll cherish for years to come. So come join us, let your hair down, and get ready to dance the night away!"
)

event3 = Event.create(
  name: "Take That Live",
  address: "Manchester, M3 1AR",
  date: Faker::Date.between(from: '2023-03-17', to: '2023-04-30'),
  artist: "Take That",
  photo_url: "https://i.ytimg.com/vi/p7bowglDeCI/maxresdefault.jpg",
  description: "Welcome to our exciting music event, where you'll experience the joy of live music! Our event features an amazing lineup of talented musicians who will take the stage and captivate you with their incredible performances. From soulful ballads to upbeat pop tunes, our event has something for everyone. Our state-of-the-art sound system and lighting will transport you to another world as you immerse yourself in the rhythm and energy of the music. Whether you're a die-hard fan of a particular artist or simply looking to discover new sounds, our music event promises to be an unforgettable experience that you'll cherish for years to come. So come join us, let your hair down, and get ready to dance the night away!"
)

event4 = Event.create(
  name: "Soho Nights - Cocktail Evening",
  address: "London, W1D 3BT",
  date: Faker::Date.between(from: '2023-03-17', to: '2023-04-30'),
  artist: "Harry Styles. George Ezra. Becky Hill. Chase & Status. Dermot Kennedy",
  photo_url: "https://imagestore.ffm.to/link/b9571b326d68208967c4e3fe4f995df1.png",
  description: "Welcome to our exciting music event, where you'll experience the joy of live music! Our event features an amazing lineup of talented musicians who will take the stage and captivate you with their incredible performances. From soulful ballads to upbeat pop tunes, our event has something for everyone. Our state-of-the-art sound system and lighting will transport you to another world as you immerse yourself in the rhythm and energy of the music. Whether you're a die-hard fan of a particular artist or simply looking to discover new sounds, our music event promises to be an unforgettable experience that you'll cherish for years to come. So come join us, let your hair down, and get ready to dance the night away!"
)

event5 = Event.create(
  name: "Radio 1 Big Weekend",
  address: "Camperdown Park, Dundee",
  date: Faker::Date.between(from: '2023-03-17', to: '2023-04-30'),
  artist: "Lewis Capaldi, Niall Horan, Lewis Capaldi",
  photo_url: "https://res.cloudinary.com/dwh6m5mbn/image/upload/c_lfill,w_830/v1637052426/adadad_leozps.png",
  description: "Welcome to our exciting music event, where you'll experience the joy of live music! Our event features an amazing lineup of talented musicians who will take the stage and captivate you with their incredible performances. From soulful ballads to upbeat pop tunes, our event has something for everyone. Our state-of-the-art sound system and lighting will transport you to another world as you immerse yourself in the rhythm and energy of the music. Whether you're a die-hard fan of a particular artist or simply looking to discover new sounds, our music event promises to be an unforgettable experience that you'll cherish for years to come. So come join us, let your hair down, and get ready to dance the night away!"
)

# New Events
event6 = Event.create(
  name: "Summertime Ball",
  address: "Wembley Stadium, London, HA9 0WS",
  date: Faker::Date.between(from: '2023-03-17', to: '2023-04-30'),
  artist: "Arctic Monkeys, The 1975, Sam Smith, Ed Sheeran, Elton John",
  photo_url: "https://assets.capitalfm.com/2022/24/summetime-ball-shop-1655201858-editorial-long-form-0.jpg",
  description: "Welcome to our exciting music event, where you'll experience the joy of live music! Our event features an amazing lineup of talented musicians who will take the stage and captivate you with their incredible performances. From soulful ballads to upbeat pop tunes, our event has something for everyone. Our state-of-the-art sound system and lighting will transport you to another world as you immerse yourself in the rhythm and energy of the music. Whether you're a die-hard fan of a particular artist or simply looking to discover new sounds, our music event promises to be an unforgettable experience that you'll cherish for years to come. So come join us, let your hair down, and get ready to dance the night away!"
)

event7 = Event.create(
  name: "Glastonbury 2023",
  address: "Somerset, BA4 4BY",
  date: Faker::Date.between(from: '2023-03-17', to: '2023-04-30'),
  artist: "Arctic Monkeys, The 1975, Sam Smith, Ed Sheeran, Elton John",
  photo_url: "https://cms.kerrang.com/images/Glastonbury-2023-header.jpg",
  description: "Welcome to our exciting music event, where you'll experience the joy of live music! Our event features an amazing lineup of talented musicians who will take the stage and captivate you with their incredible performances. From soulful ballads to upbeat pop tunes, our event has something for everyone. Our state-of-the-art sound system and lighting will transport you to another world as you immerse yourself in the rhythm and energy of the music. Whether you're a die-hard fan of a particular artist or simply looking to discover new sounds, our music event promises to be an unforgettable experience that you'll cherish for years to come. So come join us, let your hair down, and get ready to dance the night away!"
)

event8 = Event.create(
  name: "Abba Voyage",
  address: "1 Pudding Mill Lane, London, E15 2RU",
  date: Faker::Date.between(from: '2023-03-17', to: '2023-04-30'),
  artist: "Abba",
  photo_url: "https://images.discovery-prod.axs.com/2022/04/abba-voyage-tickets_04-28-22_17_626abddb9be2d.jpg",
  description: "Welcome to our exciting music event, where you'll experience the joy of live music! Our event features an amazing lineup of talented musicians who will take the stage and captivate you with their incredible performances. From soulful ballads to upbeat pop tunes, our event has something for everyone. Our state-of-the-art sound system and lighting will transport you to another world as you immerse yourself in the rhythm and energy of the music. Whether you're a die-hard fan of a particular artist or simply looking to discover new sounds, our music event promises to be an unforgettable experience that you'll cherish for years to come. So come join us, let your hair down, and get ready to dance the night away!"
)

event9 = Event.create(
  name: "Wireless Festival 2023",
  address: "Finsbury Park, London",
  date: Faker::Date.between(from: '2023-03-17', to: '2023-04-30'),
  artist: "Arctic Monkeys, The 1975, Sam Smith, Ed Sheeran, Elton John",
  photo_url: "https://media.timeout.com/images/105052183/image.jpg",
  description: "Welcome to our exciting music event, where you'll experience the joy of live music! Our event features an amazing lineup of talented musicians who will take the stage and captivate you with their incredible performances. From soulful ballads to upbeat pop tunes, our event has something for everyone. Our state-of-the-art sound system and lighting will transport you to another world as you immerse yourself in the rhythm and energy of the music. Whether you're a die-hard fan of a particular artist or simply looking to discover new sounds, our music event promises to be an unforgettable experience that you'll cherish for years to come. So come join us, let your hair down, and get ready to dance the night away!"
)

event10 = Event.create(
  name: "Penn Fest 2023",
  address: "Penn, Amersham, HP7 0PS",
  date: Faker::Date.between(from: '2023-03-17', to: '2023-04-30'),
  artist: "Arctic Monkeys, The 1975, Sam Smith, Ed Sheeran, Elton John",
  photo_url: "https://cdn2.gigantic.com/static/images/campaign/820x500/penn_festival-6710228453.jpg",
  description: "Welcome to our exciting music event, where you'll experience the joy of live music! Our event features an amazing lineup of talented musicians who will take the stage and captivate you with their incredible performances. From soulful ballads to upbeat pop tunes, our event has something for everyone. Our state-of-the-art sound system and lighting will transport you to another world as you immerse yourself in the rhythm and energy of the music. Whether you're a die-hard fan of a particular artist or simply looking to discover new sounds, our music event promises to be an unforgettable experience that you'll cherish for years to come. So come join us, let your hair down, and get ready to dance the night away!"
)

puts "Created #{Event.count} events"

# Event Chatrooms

puts 'creating new chatrooms....'
live_aid_chatroom = Chatroom.create(
  name: "Live Aid 2023",
  event: event1
)

hoxton_jazz_chatroom = Chatroom.create(
  name: "Hoxton Jazz",
  event: event2
)

take_that_chatroom = Chatroom.create(
  name: "Take That Live",
  event: event3
)
soho_nights_chatroom = Chatroom.create(
  name: "Soho Nights - Cocktail Evening",
  event: event4
)
big_weekend_chatroom = Chatroom.create(
  name: "Radio 1 Big Weekend",
  event: event5
)

summertime_ball_chatroom = Chatroom.create(
  name: "Summertime Ball",
  event: event6
)

glastonbury_chatroom = Chatroom.create(
  name: "Glastonbury 2023",
  event: event7
)

abba_voyage_chatroom = Chatroom.create(
  name: "Abba Voyage",
  event: event8
)

wireless_chatroom = Chatroom.create(
  name: "Wireless Festivall 2023",
  event: event9
)

penn_fest_chatroom = Chatroom.create(
  name: "Penn Fest 2023",
  event: event10
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

Message.create(
  content: "My mum is finally letting me out!",
  chatroom_id: take_that_chatroom.id,
  user_id: camilo.id
)
puts "Created #{Message.count} messages"

puts 'creating new user events....'

UserEvent.create(
  user_id: jose.id,
  event_id: event5.id
)

UserEvent.create(
  user_id: emilie.id,
  event_id: event4.id
)

UserEvent.create(
  user_id: alex.id,
  event_id: event3.id
)

UserEvent.create(
  user_id: camilo.id,
  event_id: event3.id
)
