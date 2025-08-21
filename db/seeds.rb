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
Movie.destroy_all
# 2. Create the instances 🏗️
puts "Creating Movies..."
Movie.create!(title: "Dishoom", overview: "7 Boundary St, London E2 7JE", poster_url: "12345", rating: 1.2)
puts "Created Dishoom"
Movie.create!(title: "chicken", overview: "Nice", poster_url: "12345", rating: 1.2)
puts "Created Dishoom"
Movie.create!(title: "cat", overview: "not nice", poster_url: "12345", rating: 1.2)
puts "Created Dishoom"
# 3. Display a message 🎉
puts "Finished! Created #{Movie.count} restaurants."

List.destroy_all
List.create!(name: "Ha-Ha")
# # Bookmark.destroy_all
# Bookmark.create!(comment: "I have no clue what I am doing!")
