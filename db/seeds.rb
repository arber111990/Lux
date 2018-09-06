# require 'faker'

# vehicles = ["yacht", "boat", "ferrari", "porsche", "rolex", "speedboat"]
# adjectives = ["Wicked", "Awesome", "Crap", "Mediocre", "Completley crap", "Makeshift"]
# images = { "yacht" => "http://res.cloudinary.com/dodobzdpn/image/upload/v1535125168/npubdtjmgcfqom9lnlew.jpg",
# "boat" => "http://res.cloudinary.com/dodobzdpn/image/upload/v1535125350/gwrzgv41pqv5ylukhfx1.jpg",
# "ferrari" => "http://res.cloudinary.com/dodobzdpn/image/upload/v1535124967/j2kofj92sucl9ruilpw8.jpg",
# "porsche" => "http://res.cloudinary.com/dodobzdpn/image/upload/v1535125233/v2owzljembljz8nq7hlm.jpg",
# "rolex" => "http://res.cloudinary.com/dodobzdpn/image/upload/v1535125292/nr0qlmegy0hiswntmabv.jpg",
# "speedboat" => "http://res.cloudinary.com/dodobzdpn/image/upload/v1535125417/s951iebjbarewdaoi4pv.jpg" }
# User.destroy_all
# Item.destroy_all
# Review.destroy_all
# puts "Making the users and an item..."
# chris = User.new(email: "ChristianBell@bell.com", password: "123123", first_name: 'Christian', last_name: 'Bell')
# chris.save
# nick = User.new(email: "Nick@bogdanoff.com", password: "dompeet", first_name: 'Nick', last_name: 'Bogdanoff')
# nick.save
# nick_item = Item.new(user_id: nick.id, title: "Nicks Yacht", location: "Nicks oudoor swimming pool", description: "This is a yacht. Some claim it is not a yacht at all, but a dinghy. Those people are incorrect.", price: 1000, rating: 1)
# nick_item.save!


# puts 'Creating 20 fake items...'
# 20.times do

#   object = vehicles.sample
#   image = images[object]
#   item = Item.new(
#     user_id: nick.id,
#     title: adjectives.sample + " " + object,
#     location: "#{Faker::Address.city}",
#     description: "This is a really great item. Trust me I am Nick Johnson and I never lie.",
#     price: rand(1000..2500),

#     photo: image,
#     rating:  rand(0..5),
#     sku: adjectives.sample + " " + object
#   )
#   item.remote_photo_url = image
#   item.save!
#   review = Review.new(
#     user_id: chris.id,
#     item_id: item.id,
#     title: "This is Crap!",
#     description: "Can't say I enjoyed any of the entire experience.",
#     rating: rand(1..5)
#   )

#   review.save!
# end
# puts 'Finished!'


# USERS
User.destroy_all
user_1 = User.new(
  email: 'jeff.bezos@gmail.com',
  password: '123123',
  first_name: 'Jeff',
  last_name: 'Bezos',
  bio: '',
  admin: false
)
user_1.remote_photo_url = 'https://res.cloudinary.com/arb/image/upload/v1536229218/Jeff_Bezos.jpg'
user_1.save!

user_2 = User.new(
  email: 'valentino.rossi@gmail.com',
  password: '123123',
  first_name: 'Valentino',
  last_name: 'Rossi',
  bio: '',
  admin: false
)
user_2.remote_photo_url = 'https://res.cloudinary.com/arb/image/upload/v1536229317/Valentino_Rossi.png'
user_2.save!

# ITEMS
Item.destroy_all
item_1 = Item.new(
  title: 'Ducati Desmosedici',
  description: 'Ducati Desmosedici is four-stroke V4 engine racing motorcycle made by Ducati for MotoGP racing. The series nomenclature is GP with the two-digit year appended, such as Desmosedici GP9 for 2009. In 2006 Ducati made a short production run of 1,500 street-legal variants, the Desmosedici RR.',
  price: 1000,
  price_cents: 1000000,
  sku: 'ducati',
  location: 'London',
  rating: 5
)
item_1.remote_photo_url = 'https://res.cloudinary.com/arb/image/upload/v1536230057/Bezos_Ducati_Desmosedici_RR_6.jpg'
item_1.user = user_1
item_1.save
