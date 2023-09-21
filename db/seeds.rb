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




p "~~~~DONE!~~~~~~"
