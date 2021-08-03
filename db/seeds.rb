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
puts "Database cleaned"

a = User.create!(first_name: 'superhero', last_name:'iron man', password:'password',email:'iron@email.com', phone_number:345678, is_owner:true)
b = User.create!(first_name: 'action', last_name: 'john wick', password:'password', email: 'john@email.com', phone_number:123456, is_owner:false)
c = User.create!(first_name: 'arts', last_name:'jet li', password:'password', email:'jetli@email.com', phone_number:2345678, is_owner:false)


Trip.create!(title: "climb le pouce", details: "le pouce situated in the centre of the island... blah blah", user:a)
Trip.create!(title: "beautiful lagoons", details: "catamaran upstanding banker Andy Dufresne begins a new life at the Shawshank prison",user:b)
Trip.create!(title: "sept cascades", details: "101-year-old Rose DeWitt Bukater tells the story of her life aboard the Titanic.",user:c)


