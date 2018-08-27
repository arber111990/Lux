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
images = { "yacht" => "http://res.cloudinary.com/dodobzdpn/image/upload/v1535125168/npubdtjmgcfqom9lnlew.jpg",
"boat" => "http://res.cloudinary.com/dodobzdpn/image/upload/v1535125350/gwrzgv41pqv5ylukhfx1.jpg",
"ferrari" => "http://res.cloudinary.com/dodobzdpn/image/upload/v1535124967/j2kofj92sucl9ruilpw8.jpg",
"porsche" => "http://res.cloudinary.com/dodobzdpn/image/upload/v1535125233/v2owzljembljz8nq7hlm.jpg",
"rolex" => "http://res.cloudinary.com/dodobzdpn/image/upload/v1535125292/nr0qlmegy0hiswntmabv.jpg",
"speedboat" => "http://res.cloudinary.com/dodobzdpn/image/upload/v1535125417/s951iebjbarewdaoi4pv.jpg" }
User.destroy_all
Item.destroy_all
Review.destroy_all
puts "Making the users and an item..."
chris = User.new(email: "ChristianBell@bell.com", password: "123123")
chris.save
nick = User.new(email: "Nick@bogdanoff.com", password: "dompeet")
nick.save
nick_item = Item.new(user_id: nick.id, title: "Nicks Yacht", location: "Nicks oudoor swimming pool", description: "This is a yacht. Some claim it is not a yacht at all, but a dinghy. Those people are incorrect.", price: 1000, rating: 1)
nick_item.save!

puts 'Creating 20 fake restaurants...'
20.times do
  object = vehicles.sample
  image = images[object]
  item = Item.new(
    user_id: nick.id,
    title: adjectives.sample + " " + object,
    location: "#{Faker::Address.city}",
    description: "This is a really great item. Trust me I am Nick Johnson and I never lie.",
    price: rand(1000..2500),
    rating:  rand(0..5)
  )
  item.remote_photo_url = image
  item.save!
  review = Review.new(
    user_id: chris.id,
    item_id: item.id,
    title: "This is Crap!",
    description: "Can't say I enjoyed any of the entire experience.",
    rating: rand(1..5)
  )

  review.save!
end
puts 'Finished!'
