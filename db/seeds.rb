# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

restaurants = [
  { name: "Dolce vita", address: "123 Main St", category: "italian" },
  { name: "La poule", address: "456 Oak St", category: "french" },
  { name: "Lagon", address: "789 Pine St", category: "japanese" },
  { name: "Sekou bi", address: "101 Elm St", category: "chinese" },
  { name: "La pirogue", address: "202 Maple St", category: "belgian" }
]

restaurants.each { |restaurant| Restaurant.create(restaurant) }

puts "Seed data created successfully!"
