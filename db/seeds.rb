# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Cleaning database..."
Event.destroy_all

# puts "Creating events..."
# lady_gaga = {name: "Lady Gaga", address: "7 Boundary St, London E2 7JE"}
# eminem =  {name: "Eminem", address: "56A Shoreditch High St, London E1 6PQ"}

# [lady_gaga, eminem].each do |attributes|
#   event = Event.create!(attributes)
#   file = URI.open("http://t3.gstatic.com/licensed-image?q=tbn:ANd9GcSJF0amVXGcXz5A6Tkm40vozAeb9pEsCh4imG1wWBJxPy_OacG_o_YY19Ko7S8WksJk5cSUbf7JoourgT4")
#   event.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
#   event.save
#   puts "Created #{event.name}"
# end
# puts "Finished!"
