# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."

Restaurant.create!(
  name: "Golden Dragon",
  address: "123 Chinatown Ave, Tokyo",
  phone_number: "03-1234-5678",
  category: "chinese"
)

Restaurant.create!(
  name: "Pasta Palace",
  address: "45 Roma Street, Tokyo",
  phone_number: "03-2345-6789",
  category: "italian"
)

Restaurant.create!(
  name: "Sushi Zen",
  address: "88 Shibuya Crossing, Tokyo",
  phone_number: "03-3456-7890",
  category: "japanese"
)

Restaurant.create!(
  name: "Café de Paris",
  address: "12 Champs-Elysees, Tokyo",
  phone_number: "03-4567-8901",
  category: "french"
)

Restaurant.create!(
  name: "Belgian Bites",
  address: "7 Brussels Blvd, Tokyo",
  phone_number: "03-5678-9012",
  category: "belgian"
)

puts "Finished seeding!"
