# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require "faker"
require "open-uri"

# Users

puts 'destroying all the tables..'
puts '-----------------------'
puts '-----------------------'
puts '-----------------------'
UserEvent.destroy_all
Message.destroy_all
User.destroy_all
Event.destroy_all
Chatroom.destroy_all

puts 'creating new user....'

def take_url()

end

owners = [
  emilie = { name: "emilie", photo: "https://upload.wikimedia.org/wikipedia/commons/e/e1/%D0%A2%D0%B8%D0%BC_%D0%9A%D1%83%D0%BA_%2802-09-2021%29.jpg" },
  jose = { name: "jose", photo: "https://imageio.forbes.com/specials-images/imageserve/62d599ede3ff49f348f9b9b4/0x0.jpg?format=jpg&crop=821,821,x155,y340,safe&height=416&width=416&fit=bounds" },
  alex = { name: "alex", photo: "https://imageio.forbes.com/specials-images/imageserve/5bb22ae84bbe6f67d2e82e05/0x0.jpg?format=jpg&crop=1012,1013,x627,y129,safe&height=416&width=416&fit=bounds" },
  camilo = { name: "camilo", photo: "https://upload.wikimedia.org/wikipedia/commons/thumb/3/34/Elon_Musk_Royal_Society_%28crop2%29.jpg/1200px-Elon_Musk_Royal_Society_%28crop2%29.jpg" },
]
owners.each do |owner|
  photo_url = URI.open(owner[:photo])
  name = owner[:name]
  new_user = User.create!(
    email: name + '@gmail.com',
    name: name,
    password: '123456',
  )
  new_user.photo.attach(io: photo_url, filename:  "#{name}.png", content_type: "image/png")
  new_user.save!
end

# users = {
#   "emilie" =>  "https://upload.wikimedia.org/wikipedia/commons/e/e1/%D0%A2%D0%B8%D0%BC_%D0%9A%D1%83%D0%BA_%2802-09-2021%29.jpg",
#   "jose" => "https://imageio.forbes.com/specials-images/imageserve/62d599ede3ff49f348f9b9b4/0x0.jpg?format=jpg&crop=821,821,x155,y340,safe&height=416&width=416&fit=bounds",
#   "alex" => "https://imageio.forbes.com/specials-images/imageserve/5bb22ae84bbe6f67d2e82e05/0x0.jpg?format=jpg&crop=1012,1013,x627,y129,safe&height=416&width=416&fit=bounds",
#   "camilo" => "https://upload.wikimedia.org/wikipedia/commons/thumb/3/34/Elon_Musk_Royal_Society_%28crop2%29.jpg/1200px-Elon_Musk_Royal_Society_%28crop2%29.jpg",
# }



# users.each do |user, img|
#   # puts user
#   # puts img
#   # puts 'new user'
#   new_user = User.new(
#     email: "#{user}@gmail.com",
#     password: "123456",
#     name: user
#   )
#   file = URI.open(img)
#   new_user.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
#   new_user.save
# end

# file = URI.open("https://upload.wikimedia.org/wikipedia/commons/thumb/8/82/NES-Console-Set.jpg/1200px-NES-Console-Set.jpg")
# article = Article.new(title: "NES", body: "A great console")
# article.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
# article.save

puts "Created #{User.count} users"

# Events

puts 'creating new events....'

event1 = Event.create(
  name: "George Ezra ",
  address: "The O2, London, UK SE10 0DX",
  date: '2023-03-17',
  artist: "George Ezra and Passenger",
  photo_url: "https://images.sk-static.com/images/media/profile_images/artists/5526408/huge_avatar",
  description: "Upcoming concerts for George Ezra Tuesday March 14, 202 George Ezra and Passenger The O2, London Thursday June 15, 2023 OneRepublic, George Ezra, James Bay, and Blondie Isle of Wight Festival 2023, Newport Friday June 30, 2023 George Ezra and Cat Burns Bedford Park, Bedford",
  genre: "Rock"
)

event2 = Event.create(
  name: "ABBA Voyage",
  address: "ABBA Arena, London, UK E15 2RU",
  date: '2023-03-16',
  artist: "ABBA Voyage",
  photo_url: "https://images.sk-static.com/images/media/profile_images/artists/10210916/huge_avatar",
  description: "Upcoming concerts for ABBA Voyage Monday March 13, 2023 ABBA Voyage ABBA Arena, London Monday March 20, 2023 ABBA Voyage ABBA Arena, London Friday March 31, 2023 ABBA Voyage ABBA Arena, London Sunday April 02, 2023 ABBA Voyage ABBA Arena, London Friday April 07, 2023 ABBA Voyage ABBA Arena, London Monday April 10, 2023 ABBA Voyage ABBA Arena, London Sunday April 16, 2023 ABBA Voyage ABBA Arena, London Saturday April 22, 2023 ABBA Voyage ABBA Arena, London",
  genre: "Pop"
)

event3 = Event.create(
  name: "Sigala",
  address: "Electric Brixton, London, UK SW2 1RJ",
  date: '2023-03-17',
  artist: "Sigala",
  photo_url: "https://images.sk-static.com/images/media/profile_images/artists/8635734/huge_avatar",
  description: "Venue Electric Brixton  Town Hall Parade, London SW2 1RJ  London, UK 0207 274 2290 electricbrixton.uk.com/ 49 upcoming concerts Capacity: 1,500  Additional details Price: £24.50 Doors open: 19:00 For fans of: Electronic and Pop.",
  genre: "Electronic"
)

event4 = Event.create(
  name: "Jorge Aragão",
  address: "Islington Assembly Hall, London, UK Upper St, London N1 2UD",
  date: '2023-03-17',
  artist: "Jorge Aragão",
  photo_url: "https://images.sk-static.com/images/media/profile_images/artists/462790/huge_avatar",
  description: "Islington Assembly Hall  Upper Street, Islington, London N1 2UD  London, UK 020 7527 8900  www.islingtonassemblyhall.co.uk  40 upcoming concerts Capacity: 800  Additional detail  Doors open: 19:00",
  genre: "Samba"
)

event5 = Event.create(
  name: "Malaa",
  address: "91 Brick Ln, London E1 6QL",
  date: '2023-03-17',
  artist: "Malaa",
  photo_url: "https://images.sk-static.com/images/media/profile_images/artists/8673349/huge_avatar",
  description: "Venue Werkhaus  85 Brick Lane  E1 6QL  London, UK  www.werkhauslondon.com/ 4 upcoming concerts Capacity: 300",
  genre: "Electronic"
)

# New Events
event6 = Event.create(
  name: "Elton John",
  address: "The O2, London, UK SE10 0DX",
  date: '2023-03-18',
  artist: "Elton John",
  photo_url: "https://images.sk-static.com/images/media/profile_images/artists/371163/huge_avatar",
  description: "Sunday April 02, 2023 Elton John  The O2, London Tuesday April 04, 2023 Elton John The O2, London  Saturday April 08, 2023  Elton John  The O2, London  Sunday April 09, 2023  Elton John  The O2, London  Wednesday April 12, 2023  Elton John  The O2, London  Thursday April 13, 2023  Elton John  The O2, London  Sunday April 16, 2023  Elton John  The O2, London  Monday April 17, 2023  Elton John  The O2, London  Tuesday May 30, 2023  Elton John  The O2, London For fans of: Rock and Pop.",
  genre: "Rock"
)

event7 = Event.create(
  name: "The Zombies",
  address: "Somerset, BA4 4BY",
  date: '2023-04-14',
  artist: "The Zombies",
  photo_url: "https://images.sk-static.com/images/media/profile_images/artists/2512/huge_avatar",
  description: "Friday April 07, 2023 The Zombies Trading Boundaries, Sheffield Green, Uckfield  Saturday April 08, 2023  The Zombies  Trading Boundaries, Sheffield Green, Uckfield  Sunday April 09, 2023  The Zombies  Trading Boundaries, Sheffield Green, Uckfield Saturday April 15, 2023  The Zombies  Apex, Bury Saint Edmunds  Wednesday April 19, 2023  The Zombies  Spa Pavilion, Felixstowe  Thursday April 20, 2023  The Zombies  Eric Morecambe Centre, Harpenden  Friday April 21, 2023  The Zombies  Eric Morecambe Centre, Harpenden  For fans of: Folk & Blues, Indie & Alt, Rock, and Pop.",
  genre: "Rock"
)

event8 = Event.create(
  name: "John Legend",
  address: "Kensington Gore, South Kensington, London SW7 2AP",
  date: '2023-04-05',
  artist: "John Legend",
  photo_url: "https://images.sk-static.com/images/media/profile_images/artists/421338/huge_avatar",
  description: "Upcoming concerts for John Legend Thursday April 06, 2023  John Legend  Venue  Royal Albert Hall  Kensington Gore  SW7 2AP  London, UK  0845 401 5045  www.royalalberthall.com/  62 upcoming concerts Capacity: 5,544  Additional details Price: £40.00 – £120.00  Doors open: 19:00 For fans of: R&B, Funk & Soul, and Pop.",
  genre: "Pop"
)

# event9 = Event.create(
#   name: "Hozier, James Bay",
#   address: "Kensington Gore, South Kensington, London SW7 2AP",
#   date: '2023-04-15',
#   artist: "Hozier, James Bay, Nilüfer Yanya, Marcus Mumford, Dermot Kennedy, and Anna Calvi",
#   photo_url: "https://images.wallpapersden.com/image/download/hozer-irish-singer-take-me-to-church-meaning_amlnaWuUmZqaraWkpJRnZWltrWdsaGc.jpg",
#   description: "Venue Royal Albert Hall Kensington Gore  SW7 2AP  London, UK  0845 401 5045  www.royalalberthall.com/  62 upcoming concerts  Capacity: 5,544  Additional details  Doors open: 17:30 A special one off charity fundraiser at the Royal Albert Hall to raise money for War Child and Turkey Mozaik who are raising crucial funds to support those affected by the recent earthquakes in Turkey and Syria.  For fans of: Folk & Blues, Indie & Alt, Funk & Soul, Pop, and Rock.",
#   genre: "Blues"
# )

event9 = Event.create(
  name: "Paramore",
  address: "The O2, London, UK SE10 0DX",
  date: '2023-04-23',
  artist: "Paramore",
  photo_url: "https://images.sk-static.com/images/media/profile_images/artists/127596/huge_avatar",
  description: "Upcoming concerts for Paramore Thursday April 20, 2023 Paramore  The O2  Peninsula Square  SE10 0DX  London, UK  020 8463 2000  www.theO2.co.uk  117 upcoming concerts  Capacity: 20,000  Additional details  Price: £42.50 – £85.00  Doors open: 18:30 For fans of: Rock, Pop, and Indie & Alt.",
  genre: "Rock"
)

event10 = Event.create(
  name: "Loyle Carner",
  address: "London, UK 45 Queen Caroline St, London W6 9QH",
  date: '2023-03-15',
  artist: "Loyle Carner",
  photo_url: "https://images.sk-static.com/images/media/profile_images/artists/7507524/huge_avatar",
  description: "Upcoming concerts for Loyle Carner Thursday March 16, 2023  Loyle Carner  OVO Arena Wembley, London  Wednesday August 23, 2023  Imagine Dragons, Billie Eilish, Foals, and Trippie Redd  Reading Festival Weekend & Early Entry 2023, Reading Eventim Apollo  Apollo Hammersmith, 45 Queen Caroline Street, Hammersmith, London  W6 9QH  London, UK  0844 249 4300  www.eventimapollo.com  79 upcoming concerts  Capacity: 5,100  Additional details  Price: £40.00  Doors open: 19:00 For fans of: Hip-Hop, R&B, and Funk & Soul.",
  genre: "R&B"
)

event11 = Event.create(
  name: "Snoop Dogg ",
  address: "The O2, London, UK SE10 0DX",
  date: '2023-03-17',
  artist: "Snoop Dogg and Warren G",
  photo_url: "https://images.sk-static.com/images/media/profile_images/artists/292668/huge_avatar",
  description: "Venue The O2 Peninsula Square SE10 0DX  London, UK  020 8463 2000 www.theO2.co.uk  117 upcoming concerts  Capacity: 20,000  Additional details  Price: £45.50 – £68.50  Doors open: 18:00 For fans of: Hip-Hop and Funk & Soul.",
  genre: "Hip-Hop"
)

event12 = Event.create(
  name: "Kelela",
  address: "HERE at Outernet, London, UK Charing Cross Rd, WC2H 8LH",
  date: '2023-04-07',
  artist: "Kelela",
  photo_url: "https://images.sk-static.com/images/media/profile_images/artists/6039679/huge_avatar",
  description: "Upcoming concerts for Kelela Saturday August 19, 2023  Bonobo, SBTRKT, Aphex Twin, and Moderat  Field Day 2023,  HERE at Outernet  Charing Cross Road  WC2H 8LH  London, UK  35 upcoming concerts  Capacity: 2,000  Additional details  Price: £26.50  Doors open: 19:00 For fans of: Pop, Indie & Alt, Hip-Hop, R&B, and Funk & Soul.",
  genre: "R&B"
)

event13 = Event.create(
  name: "Post Malone",
  address: "The O2, London, UK SE10 0DX",
  date: '2023-05-06',
  artist: "Post Malone",
  photo_url: "https://images.sk-static.com/images/media/profile_images/artists/8508053/huge_avatar",
  description: "Thursday May 04, 2023 Post Malone  The O2, London  Sunday May 07, 2023 Post Malone and Rae Sremmurd  The O2  Peninsula Square  SE10 0DX  London, UK  020 8463 2000  www.theO2.co.uk  117 upcoming concerts Capacity: 20,000  Additional details Price: £50.00 – £425.00  Doors open: 18:30 Tour name: Twelve Carat Tour For fans of: Hip-Hop and Pop.",
  genre: "Pop"
)

event14 = Event.create(
  name: "Limp Bizkit",
  address: "Penn, Amersham, HP7 0PS",
  date: '2023-04-16',
  artist: "Limp Bizkit",
  photo_url: "https://images.sk-static.com/images/media/profile_images/artists/468296/huge_avatar",
  description: "Upcoming concerts for Limp Bizkit  Monday April 17, 2023  Limp Bizkit  O2 Academy Brixton  211 Stockwell Road SW9 9SL  London, UK  020 7771 3000  academymusicgroup.com/o2academybrixton/  27 upcoming concerts  Capacity: 4,921  Additional details  Price: £45.00  Doors open: 19:00 For fans of: Rock, Metal, and Hip-Hop.",
  genre: "Rock"
)

event15 = Event.create(
  name: "Hugel",
  address: "Penn, Amersham, HP7 0PS",
  date: '2023-04-01',
  artist: "Hugel",
  photo_url: "https://images.sk-static.com/images/media/profile_images/artists/8589694/huge_avatar",
  description: "Venue  Printworks London  1 Surrey Quays Road SE16 7PJ  London, UK  www.printworkslondon.co.uk  17 upcoming concerts  Capacity: 2,500  Additional details  Doors open: 23:00  For fans of: Electronic.",
  genre: "Electronic"
)

event16 = Event.create(
  name: "Royal Philharmonic Orchestra, Alison Jiear, and Lance Ellington",
  address: "Kensington Gore, South Kensington, London SW7 2AP",
  date: '2023-04-04',
  artist: "Royal Philharmonic Orchestra, Alison Jiear, and Lance Ellington",
  photo_url: "https://images.sk-static.com/images/media/profile_images/artists/170809/huge_avatar",
  description: "Venue  Phonox  418 Brixton Road  SW9 7AY London, UK  Additional details Price: £17.50 – £20.00 Doors open: 22:00  For fans of: Electronic.",
  genre: "Electronic"
)

event17 = Event.create(
  name: "Dom Dolla",
  address: "418 Brixton Rd, London SW9 7AY",
  date: '2023-04-09',
  artist: "Dom Dolla",
  photo_url: "https://images.sk-static.com/images/media/profile_images/artists/8283518/huge_avatar",
  description: "Welcome to our exciting music event, where you'll experience the joy of live music! Our event features an amazing lineup of talented musicians who will take the stage and captivate you with their incredible performances. From soulful ballads to upbeat pop tunes, our event has something for everyone. Our state-of-the-art sound system and lighting will transport you to another world as you immerse yourself in the rhythm and energy of the music. Whether you're a die-hard fan of a particular artist or simply looking to discover new sounds, our music event promises to be an unforgettable experience that you'll cherish for years to come. So come join us, let your hair down, and get ready to dance the night away!",
  genre: "Electronic"
)

event18 = Event.create(
  name: "Dread Mar I",
  address: "418 Brixton Rd, London SW9 7AY",
  date: '2023-04-09',
  artist: "Dread Mar I",
  photo_url: "https://images.sk-static.com/images/media/profile_images/artists/361911/huge_avatar",
  description: "Venue Electric Brixton  Town Hall Parade, London  SW2 1RJ  London, UK  0207 274 2290  electricbrixton.uk.com/  49 upcoming concerts  Capacity: 1,500  Additional details  Doors open: 19:00  For fans of: Reggae and Latin.",
  genre: "Reggae"
)

event19 = Event.create(
  name: "New Regency Orchestra and La Linea",
  address: "8 Queen's Yard, London E9 5EN",
  date: '2023-03-17',
  artist: "New Regency Orchestra and La Linea",
  photo_url: "https://images.sk-static.com/images/media/profile_images/artists/10169471/huge_avatar",
  description: "Venue Colour Factory  8a Queen's Yard  E9 5EN  London, UK www.colourfactory.com/  10 upcoming concerts  Additional details  Price: £15.00 Doors open: 19:30 For fans of: Latin.",
  genre: "Latin"
)

event20 = Event.create(
  name: "Tori Amos",
  address: "Kensington Gore, South Kensington, London SW7 2AP",
  date: '2023-04-03',
  artist: "Tori Amos",
  photo_url: "https://images.sk-static.com/images/media/profile_images/artists/453601/huge_avatar",
  description: "Venue Royal Albert Hall Kensington Gore SW7 2AP  London, UK  0845 401 5045  www.royalalberthall.com/  62 upcoming concerts  Capacity: 5,544  Additional details Price: £29.50 – £85.00  Doors open: 18:45  For fans of: Folk & Blues, Rock, Indie & Alt, and Pop.",
  genre: "Blues"
)

event21 = Event.create(
  name: "Aldous Harding",
  address: "Silk St, Barbican, London EC2Y 8DS",
  date: '2023-04-28',
  artist: "Aldous Harding",
  photo_url: "https://images.sk-static.com/images/media/profile_images/artists/5530488/huge_avatar",
  description: "Barbican Centre Silk Street EC2Y 8DS London, UK  020 7638 4141  www.barbican.org.uk  Capacity: 1,949  Additional details  Doors open: 19:30 For fans of: Indie & Alt and Folk & Blues.",
  genre: "Blues"
)

event22 = Event.create(
  name: "Heatwave, Ammara, and JKriv",
  address: "261 Brixton Rd, London SW9 6LH",
  date: '2023-03-17',
  artist: "Heatwave, Ammara, and JKriv",
  photo_url: "https://images.sk-static.com/images/media/profile_images/artists/517644/huge_avatar",
  description: "Venue Brixton Jamm  261 Brixton Road  SW9 6LH  London, UK  +44 (0)20 7274 5537  www.brixtonjamm.org/  12 upcoming concerts  Capacity: 550  Additional details  Price: £6.00 – £15.00Doors open: 18:00  For fans of: Funk & Soul, Jazz, and R&B.",
  genre: "R&B"
)

event23 = Event.create(
  name: "The Brand New Heavies",
  address: "1 Cabot Square, London E14 4QT",
  date: '2023-04-12',
  artist: "The Brand New Heavies",
  photo_url: "https://images.sk-static.com/images/media/profile_images/artists/197877/huge_avatar",
  description: "Biographies The Brand New Heavies biography Formed in London,UK, Brand New Heavies are a pioneering jazz collective who helped create the sound of acid jazz, fusing funk, soul and hip hop production to create their unique sound.   Doors open: 21:30  For fans of: Jazz.",
  genre: "Jazz"
)

event24 = Event.create(
  name: "Duran Duran",
  address: "Peninsula Square, London SE10 0DX",
  date: '2023-05-01',
  artist: "Duran Duran",
  photo_url: "https://images.sk-static.com/images/media/profile_images/artists/427500/huge_avatar",
  description: "Upcoming concerts for Duran Duran Tuesday May 02, 2023 Duran Duran The O2, London Capacity: 20,000  Additional details Price: £7.00 – £125.00 Doors open: 18:30 For fans of: Pop and Rock.",
  genre: "Pop"
)

event25 = Event.create(
  name: "Jorge Drexler",
  address: "Silk St, Barbican, London EC2Y 8DS",
  date: '2023-05-01',
  artist: "Jorge Drexler",
  photo_url: "https://images.sk-static.com/images/media/profile_images/artists/416867/huge_avatar",
  description: "Welcome to our exciting music event, where you'll experience the joy of live music! Our event features an amazing lineup of talented musicians who will take the stage and captivate you with their incredible performances. From soulful ballads to upbeat pop tunes, our event has something for everyone. Our state-of-the-art sound system and lighting will transport you to another world as you immerse yourself in the rhythm and energy of the music. Whether you're a die-hard fan of a particular artist or simply looking to discover new sounds, our music event promises to be an unforgettable experience that you'll cherish for years to come. So come join us, let your hair down, and get ready to dance the night away!",
  genre: "Rock"
)

event26 = Event.create(
  name: "Avril Lavigne",
  address: "Sackville Travel Services Ltd, 211 Stockwell Rd, London SW9 9SL",
  date: '2023-05-07',
  artist: "Avril Lavigne",
  photo_url: "https://images.sk-static.com/images/media/profile_images/artists/386779/huge_avatar",
  description: "Venue O2 Academy Brixton 211 Stockwell Road  SW9 9SL  London, UK  020 7771 3000 academymusicgroup.com/o2academybrixton/  27 upcoming concerts  Capacity: 4,921  Additional details  Price: £38.50  Doors open: 19:00 Tour name: Love Sux Tour Rescheduled show from:  April 1st, 2020  February 28, 2021 March 27, 2022  Original tickets remain valid for the new date. For fans of: Rock, Pop, and Indie & Alt.",
  genre: "Rock"
)

event27 = Event.create(
  name: "Joaquin Sabina",
  address: "Kensington Gore, South Kensington, London SW7 2AP",
  date: '2023-05-19',
  artist: "Joaquin Sabina",
  photo_url: "https://images.sk-static.com/images/media/profile_images/artists/490667/huge_avatar",
  description: "Details Doors open: 20:30 Tour name: Contra todo pronóstico  The Spanish singer-songwriter Joaquín Sabina returns and announces his comeback on the stages with a world tour.  Essential and emotional massive concerts in which they will review the best of his long-lived musical work, universal hymns adhered to the genetics of popular culture of several generations, together with new unpublished songs.  For fans of: Folk & Blues, Pop, and Rock.",
  genre: "Pop"
)

event28 = Event.create(
  name: "Wide Awake Festival 2023",
  address: "Brockwell Park, Brockwell Park Gardens, London SE24 0NG",
  date: '2023-05-27',
  artist: "Alex G, Osees, Oneohtrix Point Never, Molchat Doma, Caroline Polachek, A Place To Bury Strangers, Daniel Avery, Black Country, New Road, Joy Orbison, Viagra Boys",
  photo_url: "https://images.sk-static.com/images/media/profile_images/events/40671570/huge_avatar",
  description: "Venue Brockwell Park  Dulwich Road  SE24 0PA  Herne Hill, UK  2 upcoming concerts  Additional details  Doors open: 12:00 For fans of: Indie & Alt, Rock, Folk & Blues, Hip-Hop, Pop, and Electronic.",
  genre: "Blues"
)

event29 = Event.create(
  name: "Morrissey",
  address: "45 Queen Caroline St, London W6 9QH",
  date: '2023-03-19',
  artist: "Morrissey",
  photo_url: "https://images.sk-static.com/images/media/profile_images/artists/417787/huge_avatar",
  description: "Eventim Apollo Apollo Hammersmith, 45 Queen Caroline Street, Hammersmith, London  W6 9QH  London, UK  0844 249 4300  www.eventimapollo.com  Capacity: 5,100  Additional details  Price: £45.00 – £90.00  Doors open: 19:00 For fans of: Indie & Alt and Rock.",
  genre: "Rock"
)


puts "Created #{Event.count} events"

# Event Chatrooms

puts 'creating new chatrooms....'
Chatroom.create(
  name: "George Ezra and Passenger",
  event: event1
)

Chatroom.create(
  name: "ABBA Voyage",
  event: event2
)

Chatroom.create(
  name: "Sigala",
  event: event3
)
Chatroom.create(
  name: "Jorge Aragão",
  event: event4
)
Chatroom.create(
  name: "Malaa",
  event: event5
)

Chatroom.create(
  name: "Elton John",
  event: event6
)

Chatroom.create(
  name: "The Zombies",
  event: event7
)

Chatroom.create(
  name: "John Legend",
  event: event8
)

Chatroom.create(
  name: "Hozier",
  event: event9
)

Chatroom.create(
  name: "Paramore",
  event: event10
)

Chatroom.create(
  name: "Loyle Carner",
  event: event11
)

Chatroom.create(
  name: "Snoop Dogg and Warren G",
  event: event12
)

Chatroom.create(
  name: "Kelela",
  event: event13
)

Chatroom.create(
  name: "Post Malone",
  event: event14
)

Chatroom.create(
  name: "Limp Bizkit",
  event: event15
)

Chatroom.create(
  name: "Hugel",
  event: event16
)

Chatroom.create(
  name: "Royal Philharmonic Orchestra, Alison Jiear, and Lance Ellington",
  event: event17
)

Chatroom.create(
  name: "Dom Dolla",
  event: event18
)

Chatroom.create(
  name: "Dread Mar I",
  event: event19
)

Chatroom.create(
  name: "New Regency Orchestra and La Linea",
  event: event20
)

Chatroom.create(
  name: "Tori Amos",
  event: event21
)

Chatroom.create(
  name: "Aldous Harding",
  event: event22
)

Chatroom.create(
  name: "Heatwave, Ammara, and JKriv",
  event: event23
)

Chatroom.create(
  name: "The Brand New Heavies",
  event: event24
)

Chatroom.create(
  name: "Duran Duran",
  event: event25
)

Chatroom.create(
  name: "Jorge Drexler",
  event: event26
)

Chatroom.create(
  name: "Avril Lavigne",
  event: event27
)

Chatroom.create(
  name: "Joaquin Sabina",
  event: event28
)

Chatroom.create(
  name: "Wide Awake Festival 2023",
  event: event29
)

# Chatroom.create(
#   name: "Morrissey",
#   event: event30
# )

puts "Created #{Chatroom.count} chatrooms"

# Messages

# puts 'creating new messages....'
# Message.create(
#   content: "I am buzzing",
#   chatroom_id: big_weekend_chatroom.id,
#   user_id: jose.id
# )

# Message.create(
#   content: "Can't wait to go to this event!",
#   chatroom_id: soho_nights_chatroom.id,
#   user_id: emilie.id
# )

# Message.create(
#   content: "I have been excited for so long now!",
#   chatroom_id: take_that_chatroom.id,
#   user_id: alex.id
# )

# Message.create(
#   content: "My mum is finally letting me out!",
#   chatroom_id: take_that_chatroom.id,
#   user_id: camilo.id
# )
# puts "Created #{Message.count} messages"

puts 'creating new user events....'



UserEvent.create(
  user_id: 1,
  event_id: event4.id
)

UserEvent.create(
  user_id: 2,
  event_id: event5.id
)

UserEvent.create(
  user_id: 3,
  event_id: event3.id
)

UserEvent.create(
  user_id: 4,
  event_id: event3.id
)

######################################## seed events #################################################

# event2 = Event.create(
#   name: "Hoxton Jazz",
#   address: "Troy Bar, 10 Hoxton Street, London, N1 6NG",
#   date: Faker::Date.between(from: '2023-03-17', to: '2023-04-30'),
#   artist: "Jazzy Dave",
#   photo_url: "https://www.sciencefriday.com/wp-content/uploads/2022/12/jazz-trumpet.jpg",
#   description: "Welcome to our exciting music event, where you'll experience the joy of live music! Our event features an amazing lineup of talented musicians who will take the stage and captivate you with their incredible performances. From soulful ballads to upbeat pop tunes, our event has something for everyone. Our state-of-the-art sound system and lighting will transport you to another world as you immerse yourself in the rhythm and energy of the music. Whether you're a die-hard fan of a particular artist or simply looking to discover new sounds, our music event promises to be an unforgettable experience that you'll cherish for years to come. So come join us, let your hair down, and get ready to dance the night away!"
# )

# event3 = Event.create(
#   name: "Take That Live",
#   address: "Manchester, M3 1AR",
#   date: Faker::Date.between(from: '2023-03-17', to: '2023-04-30'),
#   artist: "Take That",
#   photo_url: "https://i.ytimg.com/vi/p7bowglDeCI/maxresdefault.jpg",
#   description: "Welcome to our exciting music event, where you'll experience the joy of live music! Our event features an amazing lineup of talented musicians who will take the stage and captivate you with their incredible performances. From soulful ballads to upbeat pop tunes, our event has something for everyone. Our state-of-the-art sound system and lighting will transport you to another world as you immerse yourself in the rhythm and energy of the music. Whether you're a die-hard fan of a particular artist or simply looking to discover new sounds, our music event promises to be an unforgettable experience that you'll cherish for years to come. So come join us, let your hair down, and get ready to dance the night away!"
# )

# event4 = Event.create(
#   name: "Soho Nights - Cocktail Evening",
#   address: "London, W1D 3BT",
#   date: Faker::Date.between(from: '2023-03-17', to: '2023-04-30'),
#   artist: "Harry Styles. George Ezra. Becky Hill. Chase & Status. Dermot Kennedy",
#   photo_url: "https://imagestore.ffm.to/link/b9571b326d68208967c4e3fe4f995df1.png",
#   description: "Welcome to our exciting music event, where you'll experience the joy of live music! Our event features an amazing lineup of talented musicians who will take the stage and captivate you with their incredible performances. From soulful ballads to upbeat pop tunes, our event has something for everyone. Our state-of-the-art sound system and lighting will transport you to another world as you immerse yourself in the rhythm and energy of the music. Whether you're a die-hard fan of a particular artist or simply looking to discover new sounds, our music event promises to be an unforgettable experience that you'll cherish for years to come. So come join us, let your hair down, and get ready to dance the night away!"
# )

# event5 = Event.create(
#   name: "Radio 1 Big Weekend",
#   address: "Camperdown Park, Dundee",
#   date: Faker::Date.between(from: '2023-03-17', to: '2023-04-30'),
#   artist: "Lewis Capaldi, Niall Horan, Lewis Capaldi",
#   photo_url: "https://res.cloudinary.com/dwh6m5mbn/image/upload/c_lfill,w_830/v1637052426/adadad_leozps.png",
#   description: "Welcome to our exciting music event, where you'll experience the joy of live music! Our event features an amazing lineup of talented musicians who will take the stage and captivate you with their incredible performances. From soulful ballads to upbeat pop tunes, our event has something for everyone. Our state-of-the-art sound system and lighting will transport you to another world as you immerse yourself in the rhythm and energy of the music. Whether you're a die-hard fan of a particular artist or simply looking to discover new sounds, our music event promises to be an unforgettable experience that you'll cherish for years to come. So come join us, let your hair down, and get ready to dance the night away!"
# )

# # New Events
# event6 = Event.create(
#   name: "Summertime Ball",
#   address: "Wembley Stadium, London, HA9 0WS",
#   date: Faker::Date.between(from: '2023-03-17', to: '2023-04-30'),
#   artist: "Arctic Monkeys, The 1975, Sam Smith, Ed Sheeran, Elton John",
#   photo_url: "https://assets.capitalfm.com/2022/24/summetime-ball-shop-1655201858-editorial-long-form-0.jpg",
#   description: "Welcome to our exciting music event, where you'll experience the joy of live music! Our event features an amazing lineup of talented musicians who will take the stage and captivate you with their incredible performances. From soulful ballads to upbeat pop tunes, our event has something for everyone. Our state-of-the-art sound system and lighting will transport you to another world as you immerse yourself in the rhythm and energy of the music. Whether you're a die-hard fan of a particular artist or simply looking to discover new sounds, our music event promises to be an unforgettable experience that you'll cherish for years to come. So come join us, let your hair down, and get ready to dance the night away!"
# )

# event7 = Event.create(
#   name: "Glastonbury 2023",
#   address: "Somerset, BA4 4BY",
#   date: Faker::Date.between(from: '2023-03-17', to: '2023-04-30'),
#   artist: "Arctic Monkeys, The 1975, Sam Smith, Ed Sheeran, Elton John",
#   photo_url: "https://cms.kerrang.com/images/Glastonbury-2023-header.jpg",
#   description: "Welcome to our exciting music event, where you'll experience the joy of live music! Our event features an amazing lineup of talented musicians who will take the stage and captivate you with their incredible performances. From soulful ballads to upbeat pop tunes, our event has something for everyone. Our state-of-the-art sound system and lighting will transport you to another world as you immerse yourself in the rhythm and energy of the music. Whether you're a die-hard fan of a particular artist or simply looking to discover new sounds, our music event promises to be an unforgettable experience that you'll cherish for years to come. So come join us, let your hair down, and get ready to dance the night away!"
# )

# event8 = Event.create(
#   name: "Abba Voyage",
#   address: "1 Pudding Mill Lane, London, E15 2RU",
#   date: Faker::Date.between(from: '2023-03-17', to: '2023-04-30'),
#   artist: "Abba",
#   photo_url: "https://images.discovery-prod.axs.com/2022/04/abba-voyage-tickets_04-28-22_17_626abddb9be2d.jpg",
#   description: "Welcome to our exciting music event, where you'll experience the joy of live music! Our event features an amazing lineup of talented musicians who will take the stage and captivate you with their incredible performances. From soulful ballads to upbeat pop tunes, our event has something for everyone. Our state-of-the-art sound system and lighting will transport you to another world as you immerse yourself in the rhythm and energy of the music. Whether you're a die-hard fan of a particular artist or simply looking to discover new sounds, our music event promises to be an unforgettable experience that you'll cherish for years to come. So come join us, let your hair down, and get ready to dance the night away!"
# )

# event9 = Event.create(
#   name: "Wireless Festival 2023",
#   address: "Finsbury Park, London",
#   date: Faker::Date.between(from: '2023-03-17', to: '2023-04-30'),
#   artist: "Arctic Monkeys, The 1975, Sam Smith, Ed Sheeran, Elton John",
#   photo_url: "https://media.timeout.com/images/105052183/image.jpg",
#   description: "Welcome to our exciting music event, where you'll experience the joy of live music! Our event features an amazing lineup of talented musicians who will take the stage and captivate you with their incredible performances. From soulful ballads to upbeat pop tunes, our event has something for everyone. Our state-of-the-art sound system and lighting will transport you to another world as you immerse yourself in the rhythm and energy of the music. Whether you're a die-hard fan of a particular artist or simply looking to discover new sounds, our music event promises to be an unforgettable experience that you'll cherish for years to come. So come join us, let your hair down, and get ready to dance the night away!"
# )

# event10 = Event.create(
#   name: "Penn Fest 2023",
#   address: "Penn, Amersham, HP7 0PS",
#   date: Faker::Date.between(from: '2023-03-17', to: '2023-04-30'),
#   artist: "Arctic Monkeys, The 1975, Sam Smith, Ed Sheeran, Elton John",
#   photo_url: "https://cdn2.gigantic.com/static/images/campaign/820x500/penn_festival-6710228453.jpg",
#   description: "Welcome to our exciting music event, where you'll experience the joy of live music! Our event features an amazing lineup of talented musicians who will take the stage and captivate you with their incredible performances. From soulful ballads to upbeat pop tunes, our event has something for everyone. Our state-of-the-art sound system and lighting will transport you to another world as you immerse yourself in the rhythm and energy of the music. Whether you're a die-hard fan of a particular artist or simply looking to discover new sounds, our music event promises to be an unforgettable experience that you'll cherish for years to come. So come join us, let your hair down, and get ready to dance the night away!"
# )
