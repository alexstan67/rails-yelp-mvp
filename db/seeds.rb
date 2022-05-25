require "faker"

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants & reviews"

10.times do
  restaurant = Restaurant.new(name: Faker::Restaurant.name , address: Faker::Address.street_address, phone_number: Faker::PhoneNumber.phone_number, category: ["chinese", "italian", "japanese", "french", "belgian"].sample)
  restaurant.save
  5.times do
    review = Review.new(restaurant_id: restaurant.id, rating: [1, 2, 3, 4, 5].sample, content: Faker::Restaurant.review)
  review.save
  end 
end

puts "#{Restaurant.all.count} created"
puts "#{Review.all.count} created"

