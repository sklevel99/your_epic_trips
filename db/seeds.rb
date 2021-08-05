# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'json'

puts "Cleaning up database..."
Trip.destroy_all
User.destroy_all

a = User.create!(first_name: 'owner', last_name:'Super Admin',email:'admin@email.com', phone_number:345678, password:'password')

#Trip.create!(title: "Undersea walk",category: "Water Sports Activities", price: 700, details: "The Underwater Sea Walk is one of the most unique attractions that ne must experience when visiting Mauritius. It is a true once in a life time experience for all the non divers out there! Experience the ultimate sensation where time stops, worries fade away and breathing underwater becomes possible, safe and easy.Enjoy a safe and fascinating underwater walk on the ocean bed (about 3-4m depth), and witness firsthand the magnificent marine life of Mauritius, the beautiful fauna, corals, and a wide variety of fish, all in their natural habitat. Qualified experienced guides will accompany you along the course of the Underwater Sea Walk guaranteeing your maximum safety. This is a wonderful experience and a great opportunity to discover the underwater world from within, and make your fantasies come true. Duration: 15mins Restrictions: Adult: 12yrs+ Child: 6yrs+", user: User.first)
#Trip.create!(title: "Waterfall View",category: "Sightseeing", price: 750, details: "The waterfall is absolutely magnificent and definitely worth visiting. We recommend you climb up to the upper observation platform to get a better view of the complete waterfall, which is not visible from the lower platform.", user: User.first)
#Trip.create!(title: "Dolphin Encounter by Speedboat", category: "Speedboad trips", price: 1500, details: "      Dolphin Watch in Mauritius on a 2 hours trip with light Breakfast. The Mauritian West Coast is now worldwide known as a Sanctuary for Dolphins. The Bottle-nose or TursiopTruncatus can be seen in early morning playing and relaxing in small bays along our coast: Point Moyenne, Tamarin Bay or Black River Bay.", user: User.first)
#Trip.create!(title: "Catamaran Gabriel Cruise", category: "Island Tour", price: 1500, details: "Full day catamaran cruise to Gabriel Island day full of sun, delicious food, drinks, beautiful beaches and a lot of relaxation and fun. (BBQ Lunch or Veg Foods & drinks Included) Restrictions: Adult: 12yrs+ Child: 6yrs+\r\n\r\nYou will enjoy an unforgettable excursion combining a great cruising experience on a luxury Catamaran and free time to enjoy the beautiful Gabriel Island. On Gabriel Island itself you will find sun beds and additional facilities, such as massage services, water activities and more.",user: User.first)
#Trip.create!(title: "", category: "", price: 1500, details: "",user: User.first)
#Trip.create!(title: "", category: "", price: 1500, details: "",user: User.first)
#Trip.create!(title: "", category: "", price: 1500, details: "",user: User.first)
#Trip.create!(title: "", category: "", price: 1500, details: "",user: User.first)
#Trip.create!(title: "", category: "", price: 1500, details: "",user: User.first)
#Trip.create!(title: "", category: "", price: 1500, details: "",user: User.first)
#Trip.create!(title: "", category: "", price: 1500, details: "",user: User.first)
#Trip.create!(title: "", category: "", price: 1500, details: "",user: User.first)

json = JSON.parse(File.read(Rails.root.join("db/activities.json")))
activities = json["Activities"].each do |activity|
  trip = Trip.create!(
    title: activity['ActivityName'],
    category: activity['CategoryName'],
    details: activity['Description'],
    price: 1500,
    user: a
    )
    puts trip.title
end

puts "Finished"

