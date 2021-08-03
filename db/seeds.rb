# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning up database..."
Trip.destroy_all
User.destroy_all

a = User.create!(first_name: 'superhero', last_name:'iron man',email:'iron@email.com', phone_number:345678, password:'password')
b = User.create!(first_name: 'action', last_name: 'john wick',email: 'john@email.com', phone_number:123456, password:'password')
c = User.create!(first_name: 'arts', last_name:'jet li',email:'jetli@email.com', phone_number:2345678, password:'password')

Trip.create!(title: "climb le pouce",category: "sea", price: 57.8, details: "le pouce situated in the centre of the island... blah blah", user: User.first)
Trip.create!(title: "beautiful lagoons",category: "land", price: 57.9, details: "catamaran upstanding banker Andy Dufresne begins a new life at the Shawshank prison", user: User.second)
Trip.create!(title: "sept cascades", category: "air", price: 57.3, details: "101-year-old Rose DeWitt Bukater tells the story of her life aboard the Titanic.", user: User.last)

puts "Finished"
