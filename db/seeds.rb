# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

p "destroying all the Commentz"
Comment.destroy_all

p "destroying all the Restaurants"
Restaurant.destroy_all

p "destroying all the Users"
User.destroy_all

p "creating fake user"
10.times do |i|
  name = Faker::Name.unique.name # This will return a unique name every time it is called
  User.create!(username: name, password: "123456", email: "#{name.split.last}#{i}@gmail.com")
  p "create user #{name}"
end

Restaurant.create(name: "Soggiorno", address: "5 Chome-11-38 Onoharanishi, Minoh, Osaka", category: "Pizza", rating: 4.6, phone_number:  "072-735-7757", user: User.all.sample)
p "create Soggiorno"

Restaurant.create(name: "At the 21", address: "3 Chome-18-19 Uenohigashi, Toyonaka, Osaka", category: "Okonomiyaki", rating: 4.2, phone_number:  "06-6848-3660", user: User.all.sample)
p "create At the 21"

Restaurant.create(name: "La Lanterna di Genova", address: "3 Chome-2-8 Nakazaki, Kita Ward, Osaka", category: "Italian", rating: 4.6, phone_number:  "06-6371-0606", user: User.all.sample)
p "create La lanterna"

Restaurant.create(name: "Senri Tajimaya", address: "3 Chome-10-17 Kamishinden, Toyonaka, Osaka", category: "Yakiniku", rating: 4.3, phone_number:  " 06-6833-1129", user: User.all.sample)
p "create Senri Tajimaya"

Restaurant.create(name: "Shichirin Minoh Onohara", address: "5 Chome-8-3 Onoharahigashi, Minoh, Osaka", category: "Yakiniku", rating: 4.0, phone_number:  "072-726-3558", user: User.all.sample)
p "create Shichirin"

Restaurant.create(name: "El Pancho", address: "1 Chome-10-1 心斎橋タワービル 8F", category: "Mexican", rating: 4.3, phone_number: "06-6241-0588", user: User.all.sample)
p "create El Pancho"

20.times do
  content = Faker::Restaurant.review
  user = User.all.sample
  restaurant = Restaurant.all.sample
  owner = restaurant.user
  while user == owner
    user = User.all.sample
  end
  Comment.create(content: content, user: user, restaurant: restaurant)
  p "create comment by #{user.username} on #{restaurant.name}"
end


p "~~~~DONE!~~~~~~"
