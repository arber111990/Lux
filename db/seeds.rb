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
chris = User.new(email: "ChristianBell@bell.com", password: "123123")
chris.save
nick = User.new(email: "Nick@bogdanoff.com", password: "dompeet")
nick.save
nick_item = Item.new(user_id: nick.id, title: "Nicks Naughty Yacht", location: "Nicks oudoor swimming pool", description: "Spend time on a real yacht with Nick Johnson and...other people", price: 1000, rating: 1)
nick_item.save!
ed_item = Item.new(user_id: nick.id, title: "Ed Ward's Lambo",location: "lewagon london", description: "Rent out the great man's car!", price: 100, rating: 5)
ed_item.save!
lenny_item = Item.new(user_id: nick.id, title: "Lenny's ladcopter",location: "lenny land", description: "Rent out the great man's copter!", price: 50, rating: 4)
lenny_item.save!
arber_item = Item.new(user_id: nick.id, title: "Arber's Arbor",location: "Genova", description: "Spend a night in Arber's private arbor!", price: 50, rating: 4)
arber_item.save!
chris_item = Item.new(user_id: nick.id, title: "Christian's Cinky Copter",location: "The air", description: "Christian does some very un-christian things...", price: 50, rating: 4)
chris_item.save!
filip_item = Item.new(user_id: nick.id, title: "Filip's fashy Ford Fiesta",location: "Romania", description: "Christian does some very un-christian things...", price: 50, rating: 4)
filip_item.save!
Review.new(user_id: chris.id, item_id: nick_item.id, title: "The greatest dissapointment since Alex Haumer left",description: "Nick promised a yacht, it was actually a dinghy! What a sneaky guy!", rating: 1).save!


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
end
puts 'Finished!'
