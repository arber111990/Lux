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
images = { "yacht" => "https://www.heesenyachts.com/app/uploads/2017/09/83m-Steel-exterior-6.jpg?x38579",
"boat" => "https://upload.wikimedia.org/wikipedia/commons/thumb/d/d9/Motorboat_at_Kankaria_lake.JPG/1280px-Motorboat_at_Kankaria_lake.JPG",
"ferrari" => "https://photos.motorcar.com/used-2013-ferrari-458_italia-2drconvertible-9871-17036078-1-640.jpg",
"porsche" => "https://f7432d8eadcf865aa9d9-9c672a3a4ecaaacdf2fee3b3e6fd2716.ssl.cf3.rackcdn.com/C1201/U1442/IMG_7071-medium.jpg",
"rolex" => "https://d1alt1wkdk73qo.cloudfront.net/images/guide/254052cb2530451da89cabd32ca4901f/640x478_ac.jpg",
"speedboat" => "https://www.parksmarina.com/webres/Image/obw/page-top-images/rentals-boat-slips.jpg"}
User.destroy_all
Item.destroy_all
Review.destroy_all
puts "Making the users and an item..."
chris = User.new(email: "ChristianBell@bell.com", password: "123123")
chris.save
nick = User.new(email: "Nick@bogdanoff.com", password: "dompeet")
nick.save
nick_item = Item.new(user_id: nick.id, title: "Nicks Naughty Yacht", location: "Nicks oudoor swimming pool", description: "This is a naughty yacht. Some claim it is not a yacht at all, but a dinghy. Those people are incorrect.", price: 1000, rating: 1)
nick_item.save!

puts 'Creating 10 fake restaurants...'
10.times do
  object = vehicles.sample
  image = images[object]
  item = Item.new(
    user_id: nick.id,
    title: adjectives.sample + " " + object,
    location: "#{Faker::Address.city}",
    description: "This is a really great item. Trust me I am Nick Johnson and I never lie.",
    price: rand(1000..2500),
    photo: image,
    rating:  rand(0..5)
  )
  item.save!
  review = Review.new(
    user_id: chris.id,
    item_id: item.id,
    title: "This is Crap!",
    description: "Nick Johnson is scum who deserves death.",
    rating: rand(1..5)
  )

  review.save!
end
puts 'Finished!'
