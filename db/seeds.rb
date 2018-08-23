# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'


User.destroy_all
Item.destroy_all
Review.destroy_all
puts "Making the users and an item..."
chris = User.new(email: "ChristianBell@bell.com", password: "123123")
chris.save
nick = User.new(email: "Nick@bogdanoff.com", password: "dompeet")
nick.save
nick_item = Item.new(user_id: nick.id, title: "Nicks Naughty Yacht", location: "Nicks oudoor swimming pool", description: "Spend time on a real yacht with Nick Johnson and...other people", price: 1000, rating: 1)
nick_item.save!

puts 'Creating 10 fake restaurants...'
10.times do
  item = Item.new(
    user_id: nick.id,
    title: "#{Faker::Vehicle.manufacture}",
    location: "#{Faker::Address.city}",
    description: "#{Faker::Vehicle.car_options}, #{Faker::Vehicle.standard_specs}",
    price: rand(1000..2500),
    rating:  rand(0..5)
  )
  item.save!
  review = Review.new(
    user_id: chris.id,
    item_id: item.id,
    title: "This is great!",
    description: "I had a great time with this!",
    rating: rand(1..5)
  )
  review.save!
end
puts 'Finished!'
