# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)




UserHobby.destroy_all

    Hobby.destroy_all

        Outfit.destroy_all

    User.destroy_all








20.times do

    User.create(name: Faker::JapaneseMedia::Naruto.character, 
        username: Faker::Internet.username, 
        email: Faker::Internet.email, 
        location: Faker::Address.city,

            password: "123",

        age: rand(10..100)
    )

end 








list_of_hobbies = [
    "acrobats",


    "basketball",
    "drawing",
    "fixing cars",
    "gardening",
    "hiking",
    "juggling",
    "meditation",
    "painting",


    "zZzooBly🤷🏾‍♂️"
]
    how_many_hobbies = list_of_hobbies.length
    # list_of_descriptions = [

    # ]


    list_of_hobbies.each do |hobby|

        Hobby.create(name: hobby,
        description: "{ This is a Placeholder For Now : This should describe what this hobby consists of }")

    end 


####  Console Debugging-Helpers

    # Hobby.create(name: "", description: "")
    # Hobby.all.size

################

    # how_many_hobbies.times do

    # Could Have Also Done a  (.Each)
    # Hobby.create(name: list_of_hobbies.uniq.sample,
    # description: "{ This is a Placeholder For Now : This should describe what this hobby consists of }")

    # end    








list_of_utensils = [

    "a mat",

    "a pen",
    "a pencil",


    "boots",

    "paper",
    "shin guards"

]
40.times do

    UserHobby.create(utensil: list_of_utensils.sample, 
        
        time_spent: rand(1..1000000), 
        enjoying: true, 

            #    new_for_you? : boolean

        user: User.all.sample,
        #  user_id 
        hobby: Hobby.all.sample)
        #  hobby_id 

        #  !!  NOT - user_id: User.all.sample

end
####  Console Debugging-Helpers

    # UserHobby.create(utensil: "", time_spent: 0, enjoying: true, user_id: User.all.sample, hobby_id: Hobby.all.sample)
    
################









puts "

✨🙌🏾🎊YAAAAAAAAAAAAAAY!!🎊🙌🏾✨

"

