# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


puts "Cleaning the DB"
#modelname.destroy_all
Restaurant.destroy_all

puts "Create Restaurants"

mcdonalds = { name: "Mcdonals", address: "Lisbon", stars: 3 }
pizzahut = { name: "Pizzahut", address: "Madrid", stars: 3 }
galatakitchen = { name: "Galata Kitchen", address: "Istanbul", stars: 5 }

[mcdonalds,pizzahut,galatakitchen].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
  end
puts "Finished seeding"


