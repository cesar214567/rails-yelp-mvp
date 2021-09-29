# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
categories = %w[chinese italian japanese french belgian]
ratings = (1..5).to_a
5.times do
  restaurant = Restaurant.new(address: Faker::Address.full_address, name: Faker::Restaurant.name, category: categories.sample )
  restaurant.save
  3.times do
    review = Review.new(content: Faker::Restaurant.review, rating: ratings.sample)
    review.restaurant = restaurant
    review.save
  end
end
