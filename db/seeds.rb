# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)





User.destroy_all


20.times do

    User.create(name: Faker::JapaneseMedia::Naruto.character, 
    username: Faker::Internet.username, 
    email: Faker::Internet.email, 
    location: Faker::Address.city, 
    age: rand(10..100)
    )

end 


puts "
YAAAAAAAAAAAAAAY!!

"

