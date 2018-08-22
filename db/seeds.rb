# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.new(email: "ChristianBell@bell.com", password: "123123").save
User.new(email: "Nick@bogdanoff.com", password: "dompeet").save
Item.new(id: 1, title: "Nicks Naughty Yacht", location: "Nicks oudoor swimming pool", description: "Spend time on a real yacht with Nick Johnson and...other people", price: 1000, rating: 1, user_id: 2).save
Item.new(id: 2, title: "Ed Ward's Lambo",location: "lewagon london", description: "Rent out the great man's car!", price: 100, rating: 5, user_id: 2).save
Review.new(id: 1, user_id: 2, item_id: 1, title: "The greatest dissapointment since Alex Haumer left",description: "Nick promised a yacht, it was actually a dinghy! What a sneaky guy!", rating: 1).save

