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

user_3 = User.new(
  email: 'jorge.lorenzo@gmail.com',
  password: '123123',
  first_name: 'Jorge ',
  last_name: 'Lorenzo',
  bio: '',
  admin: false
)
user_3.remote_photo_url = 'https://res.cloudinary.com/arb/image/upload/v1536231499/Jorge_Lorenzo.jpg'
user_3.save!

user_4 = User.new(
  email: 'theresa@johnson.com',
  password: '123123',
  first_name: 'Theresa May &',
  last_name: 'Boris Johnson',
  bio: '',
  admin: false
)
user_4.remote_photo_url = 'https://res.cloudinary.com/arb/image/upload/v1536232130/Theresa_May_and_Boris_Johnson.jpg'
user_4.save!

user_5 = User.new(
  email: 'Shakira@gmail.com',
  password: '123123',
  first_name: 'Shakira',
  last_name: '',
  bio: '',
  admin: false
)
user_5.remote_photo_url = 'https://res.cloudinary.com/arb/image/upload/v1536232228/Shakira.png'
user_5.save!

user_6 = User.new(
  email: 'Justin.Bieber@gmail.com',
  password: '123123',
  first_name: 'Justin',
  last_name: 'Bieber',
  bio: '',
  admin: false
)
user_6.remote_photo_url = 'https://res.cloudinary.com/arb/image/upload/v1536232255/Justin_Bieber.png'
user_6.save!

user_7 = User.new(
  email: 'Cristiano.Ronaldo@gmail.com',
  password: '123123',
  first_name: 'Cristiano',
  last_name: 'Ronaldo',
  bio: '',
  admin: false
)
user_7.remote_photo_url = 'https://res.cloudinary.com/arb/image/upload/v1536232263/Cristiano_Ronaldo.png'
user_7.save!

user_8 = User.new(
  email: 'Mark.Zuckerberg@gmail.com',
  password: '123123',
  first_name: 'Mark',
  last_name: 'Zuckerberg',
  bio: '',
  admin: false
)
user_8.remote_photo_url = 'https://res.cloudinary.com/arb/image/upload/v1536232282/Mark_Zuckerberg.jpg'
user_8.save!

user_9 = User.new(
  email: 'Dan.Bilzerian@gmail.com',
  password: '123123',
  first_name: 'Dan',
  last_name: 'Bilzerian',
  bio: '',
  admin: false
)
user_9.remote_photo_url = 'https://res.cloudinary.com/arb/image/upload/v1536232295/Dan_Bilzerian.jpg'
user_9.save!

user_10 = User.new(
  email: 'Warren.Buffet@gmail.com',
  password: '123123',
  first_name: 'Jorge ',
  last_name: 'Lorenzo',
  bio: '',
  admin: false
)
user_10.remote_photo_url = 'https://res.cloudinary.com/arb/image/upload/v1536232308/Warren_Buffet.jpg'
user_10.save!

user_11 = User.new(
  email: 'Eric.Shmidt@gmail.com',
  password: '123123',
  first_name: 'Eric',
  last_name: 'Shmidt',
  bio: '',
  admin: false
)
user_11.remote_photo_url = 'https://res.cloudinary.com/arb/image/upload/v1536232331/MIT-Schmidt-Fellow_0.jpg'
user_11.save!

user_12 = User.new(
  email: 'Giorgio.Armani@gmail.com',
  password: '123123',
  first_name: 'Giorgio',
  last_name: 'Armani',
  bio: '',
  admin: false
)
user_12.remote_photo_url = 'https://res.cloudinary.com/arb/image/upload/v1536232342/Giorgi_Armani.jpg'
user_12.save!

user_12 = User.new(
  email: 'Bill.Gates@gmail.com',
  password: '123123',
  first_name: 'Bill',
  last_name: 'Gates',
  bio: '',
  admin: false
)
user_13.remote_photo_url = 'https://res.cloudinary.com/arb/image/upload/v1536232369/Bill_Gates.jpg'
user_13.save!

user_14 = User.new(
  email: 'Mike.Bloomberg@gmail.com',
  password: '123123',
  first_name: 'Mike',
  last_name: 'Bloomberg',
  bio: '',
  admin: false
)
user_14.remote_photo_url = 'https://res.cloudinary.com/arb/image/upload/v1536232385/Mike_Bloomberg.jpg'
user_14.save!

user_15 = User.new(
  email: 'Silvio.Berlusconi@gmail.com',
  password: '123123',
  first_name: 'Silvio',
  last_name: 'Berlusconi',
  bio: '',
  admin: false
)
user_15.remote_photo_url = 'https://res.cloudinary.com/arb/image/upload/v1536232404/Silvio_Berlusconi.jpg'
user_15.save!

user_16 = User.new(
  email: 'Jose.Mourinho@gmail.com',
  password: '123123',
  first_name: 'Jose',
  last_name: 'Mourinho',
  bio: '',
  admin: false
)
user_16.remote_photo_url = 'https://res.cloudinary.com/arb/image/upload/v1536232427/Mourinho.jpg'
user_16.save!

user_17 = User.new(
  email: 'Ronaldo@gmail.com',
  password: '123123',
  first_name: 'Ronaldo',
  last_name: '',
  bio: '',
  admin: false
)
user_17.remote_photo_url = 'https://res.cloudinary.com/arb/image/upload/v1536232472/Ronaldo.jpg'
user_17.save!

user_18 = User.new(
  email: 'Kimi.Raikkonen@gmail.com',
  password: '123123',
  first_name: 'Kimi',
  last_name: 'Raikkonen',
  bio: '',
  admin: false
)
user_18.remote_photo_url = 'https://res.cloudinary.com/arb/image/upload/v1536232523/Kimi_Raikkonen.png'
user_18.save!

user_19 = User.new(
  email: 'Javier.Zanetti@gmail.com',
  password: '123123',
  first_name: 'Javier',
  last_name: 'Zanetti',
  bio: '',
  admin: false
)
user_19.remote_photo_url = 'https://res.cloudinary.com/arb/image/upload/v1536232535/Javier-Zanetti.jpg'
user_19.save!

user_20 = User.new(
  email: 'George.Clooney@gmail.com',
  password: '123123',
  first_name: 'George',
  last_name: 'Clooney',
  bio: '',
  admin: false
)
user_20.remote_photo_url = 'https://res.cloudinary.com/arb/image/upload/v1536233877/220px-George_Clooney_2016.jpg'
user_20.save!



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

item_2 = Item.new(
  title: 'Yamaha YZR-M1',
  description: 'The Yamaha YZR-M1 is an inline-four motorcycle specifically developed by Yamaha Motor Company to race in the current MotoGP series.[1]',
  price: 1000,
  price_cents: 1000000,
  sku: 'Yamaha',
  location: 'London',
  rating: 5
)
item_2.remote_photo_url = 'https://res.cloudinary.com/arb/image/upload/v1536235101/Yamaha_of_Valentino.jpg'
item_2.user = user_2
item_2.save

item_3 = Item.new(
  title: 'Ducati Desmosedici',
  description: 'Ducati Desmosedici is four-stroke V4 engine racing motorcycle made by Ducati for MotoGP racing. The series nomenclature is GP with the two-digit year appended, such as Desmosedici GP9 for 2009. In 2006 Ducati made a short production run of 1,500 street-legal variants, the Desmosedici RR.',
  price: 1000,
  price_cents: 1000000,
  sku: 'ducati',
  location: 'London',
  rating: 5
)
item_3.remote_photo_url = 'https://res.cloudinary.com/arb/image/upload/v1536235090/Lorenzo_Ducati_GP17.jpg'
item_3.user = user_3
item_3.save

item_4 = Item.new(
  title: 'Bugatti Chiron',
  description: 'The CHIRON is the most powerful, fastest and exclusive production super sports car in BUGATTI sbrand history. The Chiron is an unique masterpiece of art.',
  price: 1000,
  price_cents: 1000000,
  sku: 'Bugatti',
  location: 'London',
  rating: 5
)
item_4.remote_photo_url = 'https://res.cloudinary.com/arb/image/upload/v1536235143/Lego_Bugatti_Chiron-1.png'
item_4.user = user_4
item_4.save

item_5 = Item.new(
  title: 'Lamborgini',
  description: 'The Lamborghini Murciélago is a sports car produced by Italian automotive manufacturer Lamborghini between 2001[7]and 2010.',
  price: 1000,
  price_cents: 1000000,
  sku: 'Lamborgini',
  location: 'London',
  rating: 5
)
item_5.remote_photo_url = 'https://res.cloudinary.com/arb/image/upload/v1536235461/Shakira_Aventador.jpg'
item_5.user = user_5
item_5.save

item_6 = Item.new(
  title: 'Lamborgini',
  description: 'The Lamborghini Murciélago is a sports car produced by Italian automotive manufacturer Lamborghini between 2001[7]and 2010.',
  price: 1000,
  price_cents: 1000000,
  sku: 'Lamborgini',
  location: 'London',
  rating: 5
)
item_6.remote_photo_url = 'https://res.cloudinary.com/arb/image/upload/v1536235196/CR7.jpg'
item_6.user = user_6
item_6.save

item_7 = Item.new(
  title: 'Lamborgini',
  description: 'The Lamborghini Gallardo (/ɡaɪˈjɑːrdoʊ/; Spanish: [ɡaˈʎaɾðo]) is a sports car built by the Italian automotive manufacturer Lamborghini from 2003 to 2013',
  price: 1000,
  price_cents: 1000000,
  sku: 'Lamborgini',
  location: 'London',
  rating: 5
)
item_7.remote_photo_url = 'https://res.cloudinary.com/arb/image/upload/v1536235187/Bieber_murcielago.jpg'
item_7.user = user_7
item_7.save

item_8 = Item.new(
  title: 'Lamborgini',
  description: 'The Lamborghini Gallardo (/ɡaɪˈjɑːrdoʊ/; Spanish: [ɡaˈʎaɾðo]) is a sports car built by the Italian automotive manufacturer Lamborghini from 2003 to 2013',
  price: 1000,
  price_cents: 1000000,
  sku: 'Lamborgini',
  location: 'London',
  rating: 5
)
item_8.remote_photo_url = 'https://res.cloudinary.com/arb/image/upload/v1536235171/Zuckerberg_Lamborghini2.jpg'
item_8.user = user_8
item_8.save

item_9 = Item.new(
  title: 'Jet',
  description: '',
  price: 1000,
  price_cents: 1000000,
  sku: 'Jet',
  location: 'London',
  rating: 5
)
item_9.remote_photo_url = 'https://res.cloudinary.com/arb/image/upload/v1536235220/Buffet_Georgia-Jet20-700x450.jpg'
item_9.user = user_9
item_9.save

item_10 = Item.new(
  title: 'Yacht',
  description: 'Ducati Desmosedici is ',
  price: 1000,
  price_cents: 1000000,
  sku: 'Yacht',
  location: 'London',
  rating: 5
)
item_10.remote_photo_url = 'https://res.cloudinary.com/arb/image/upload/v1536235228/Bilzerian_Jet2.jpg'
item_10.user = user_10
item_10.save

item_11 = Item.new(
  title: 'Yacht',
  description: 'Ducati Desmosedici is ',
  price: 1000,
  price_cents: 1000000,
  sku: 'ducati',
  location: 'London',
  rating: 5
)
item_11.remote_photo_url = 'https://res.cloudinary.com/arb/image/upload/v1536235264/Armany_-_lux-yachts-crew-luxury-desktop-puters-lux-yachts-of-lux-yachts-crew.jpg'
item_11.user = user_11
item_11.save

item_12 = Item.new(
  title: 'Yacht',
  description: 'Ducati Desmosedici is ',
  price: 1000,
  price_cents: 1000000,
  sku: 'Yacht',
  location: 'London',
  rating: 5
)
item_12.remote_photo_url = 'https://res.cloudinary.com/arb/image/upload/v1536235264/George_Clooney_-sunseeker-25m-luxury-yacht-huge-2280637d0023f5ae.jpg'
item_12.user = user_12
item_12.save

item_13 = Item.new(
  title: 'Yacht',
  description: 'Ducati Desmosedici is ',
  price: 1000,
  price_cents: 1000000,
  sku: 'Yacht',
  location: 'London',
  rating: 5
)
item_13.remote_photo_url = ' '
item_13.user = user_13
item_13.save

item_14 = Item.new(
  title: 'Ducati Desmosedici',
  description: 'Ducati Desmosedici is ',
  price: 1000,
  price_cents: 1000000,
  sku: 'ducati',
  location: 'London',
  rating: 5
)
item_14.remote_photo_url = 'https://res.cloudinary.com/arb/image/upload/v1536230057/Bezos_Ducati_Desmosedici_RR_6.jpg'
item_14.user = user_14
item_14.save

item_15 = Item.new(
  title: 'Ferrari F12',
  description: 'The Ferrari F12berlinetta[3] (also unofficially referred to as the F12 Berlinetta or the F12, and unofficially stylized as the F12B for short) is a front mid-engine, rear-wheel-drive grand tourer produced by Italian sports car manufacturer Ferrari. The F12 Berlinetta debuted at the 2012 Geneva Motor Show, and replaces the 599 grand tourer.[5]',
  price: 1000,
  price_cents: 1000000,
  sku: 'Ferrari',
  location: 'London',
  rating: 5
)
item_15.remote_photo_url = 'https://res.cloudinary.com/arb/image/upload/v1536235294/Silvio_1-ferrariF12.jpg'
item_15.user = user_15
item_15.save

item_16 = Item.new(
  title: 'Ferrari Challenge',
  description: 'The Ferrari Challenge is a single-marque motorsport championship that was created in 1993 for owners of the 348 Berlinetta who wanted to become involved in racing. It now encompasses three official championships in the United States, Asia-Pacific, and Europe.[1] ',
  price: 1000,
  price_cents: 1000000,
  sku: 'ducati',
  location: 'London',
  rating: 5
)
item_16.remote_photo_url = 'https://res.cloudinary.com/arb/image/upload/v1536235318/Mou_California.jpg'
item_16.user = user_16
item_16.save

item_17 = Item.new(
  title: 'Ferrari 458 Speciale',
  description: 'The Ferrari 458 Italia is a mid-engined sports car produced by the Italian sports car manufacturer Ferrari. The 458 replaced the Ferrari F430, and was first officially unveiled at the 2009 Frankfurt Motor Show.[4][5] It was replaced by the Ferrari 488, which was unveiled at the 2015 Geneva Motor Show.',
  price: 1000,
  price_cents: 1000000,
  sku: 'ducati',
  location: 'London',
  rating: 5
)
item_17.remote_photo_url = 'https://res.cloudinary.com/arb/image/upload/v1536235318/Ronaldo_Ferrari_-_458-spider.jpg'
item_17.user = user_17
item_17.save

item_18 = Item.new(
  title: 'Ferrari SF70h',
  description: 'The Ferrari SF70H is a Formula One racing car designed and constructed by Scuderia Ferrari to compete during the 2017 Formula One season. The car was driven by Sebastian Vettel and Kimi Räikkönen.[3] It made its competitive début at the 2017 Australian Grand Prix, where it finished first and fourth in the hands of Vettel and Räikkönen respectively. It was the last car to feature sponsorship from Santander, their long-term sponsor since 2010.',
  price: 1000,
  price_cents: 1000000,
  sku: 'ducati',
  location: 'London',
  rating: 5
)
item_18.remote_photo_url = 'https://res.cloudinary.com/arb/image/upload/v1536235318/Mou_California.jpg'
item_18.user = user_18
item_18.save

item_19 = Item.new(
  title: 'Ferrari Enzo',
  description: 'The Enzo Ferrari[7] (also unofficially referred to as the Ferrari Enzo) is a 12 cylinder mid-engine sports car named after the companys founder, Enzo Ferrari.',
  price: 1000,
  price_cents: 1000000,
  sku: 'ducati',
  location: 'London',
  rating: 5
)
item_19.remote_photo_url = 'https://res.cloudinary.com/arb/image/upload/v1536235319/Zanetti_Enzo_Ferrari.jpg'
item_19.user = user_19
item_19.save

item_20 = Item.new(
  title: 'Ducati Desmosedici',
  description: 'Ducati Desmosedici is ',
  price: 1000,
  price_cents: 1000000,
  sku: 'ducati',
  location: 'London',
  rating: 5
)
item_20.remote_photo_url = 'https://res.cloudinary.com/arb/image/upload/v1536230057/Bezos_Ducati_Desmosedici_RR_6.jpg'
item_20.user = user_20
item_20.save

