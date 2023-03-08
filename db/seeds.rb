# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Cleaning database..."
Event.destroy_all

puts "Creating restaurants..."
lady_gaga = {name: "Lady Gaga", address: "7 Boundary St, London E2 7JE"}
eminem =  {name: "Eminem", address: "56A Shoreditch High St, London E1 6PQ"}

[lady_gaga, eminem].each do |attributes|
  event = Event.create!(attributes)
  puts "Created #{event.name}"
end
puts "Finished!"
