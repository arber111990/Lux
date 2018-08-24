# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

vehicles = ["yacht", "boat", "ferrari", "porsche", "rolex", "speedboat"]
adjectives = ["Wicked", "Awesome", "Crap", "Mediocre", "Completley crap", "Makeshift"]

User.destroy_all
Item.destroy_all
Review.destroy_all
puts "Making the users and an item..."
chris = User.new(email: "ChristianBell@bell.com", password: "123123")
chris.save
nick = User.new(email: "Nick@bogdanoff.com", password: "dompeet")
nick.save
nick_item = Item.new(user_id: nick.id, title: "Nicks Naughty Yacht", location: "Nicks oudoor swimming pool", description: "The Lamborghini Gallardo (/ɡaɪˈjɑːrdoʊ/; Spanish: [ɡaˈʎaɾðo]) is a sports car built by the Italian automotive manufacturer Lamborghini from 2003 to 2013. It is Lamborghini's first best-selling model with 14,022 built throughout its production run.[7] Named after a famous breed of fighting bull,[8] the V10 powered Gallardo has been Lamborghini's sales leader and stable-mate to a succession of V12 flagship models—first to the Murciélago (4,099 built between 2001 and 2011), then to the current flagship, the Aventador. On 25 November 2013, the last Gallardo was rolled off the production line. The Gallardo was replaced by the Huracán in 2014.", price: 1000, rating: 1)
nick_item.save!

puts 'Creating 10 fake restaurants...'
10.times do
  item = Item.new(
    user_id: nick.id,
    title: adjectives.sample + " " + vehicles.sample,
    location: "#{Faker::Address.city}",
    description: "#{Faker::Vehicle.car_options}, #{Faker::Vehicle.standard_specs}",
    price: rand(1000..2500),
    photo: "https://images.unsplash.com/photo-1532054042869-c409cdfd5d3c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=015f7a3032ecf11eb2b6d6f70a8d164d&auto=format&fit=crop&w=1050&q=80",
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
