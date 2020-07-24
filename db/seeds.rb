require 'rest-client'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# 10.times do
#     User.create({
#         content: Faker::Hipster.paragraph,
#         sender_user_id: User.all.sample.id, 
#         receiver_user_id: User.all.sample.id
#     })
# end

# params.require(:user).permit(:first_name, :last_name, :email, :username, :password )

#DESTROYS ALL PRE-MADE BEFORE MAKING AGAIN
User.destroy_all
Game.destroy_all
Review.destroy_all

#FAKE USERS

# 5.times do
#     User.create({
#         first_name: Faker::Name.first_name,
#         last_name: Faker::Name.last_name,
#         email: Faker::Internet.email,
#         username: Faker::Internet.username,
#         password: Faker::Internet.password(max_length: 15)
#     })
# end


# User.create(first_name: "Klarissa", last_name: "Smith", email:"ksmith@ksmith.com", username:"ksmith", password:"12345")
# User.create(first_name: "John", last_name: "Doe", email:"joedoe@abc.com", username:"joedoe", password:"joe")
# User.create(first_name: "Jane", last_name: "Doe", email:"janedoe@abc.com", username:"janedoe", password:"jane")

# # title,image,rating,genre,studio,socials,officialsites,summary,consoles
#  Game.create(title: "Titanfall", image:"https://images-na.ssl-images-amazon.com/images/I/51ZMKvnLbbL._SX375_BO1,204,203,200_.jpg", summary:"Fun, great game of amazingness")
# Game.create(title: "Titanfall 2", image:"https://s2.gaming-cdn.com/images/products/1273/orig/titanfall-2-cover.jpg", summary:"The second installment of a great game of amazingness")
# Game.create(title: "We Happy Few", image:"https://steamcdn-a.akamaihd.net/steam/apps/320240/capsule_616x353.jpg?t=1575388728", summary:"The game where the world tries to attack and kill you")
# Game.create(title: "Don't Starve", image:"https://steamcdn-a.akamaihd.net/steam/apps/219740/header.jpg?t=1588618326", summary:"A game where you're small and fragile and try not to be eaten.")
# Game.create(title: "The Sims 4", image:"https://images-na.ssl-images-amazon.com/images/I/810Fi5IjnPL._SY445_.jpg", summary:"The Sims. What else needs to be said?")
# Game.create(title: "The Sims Medieval", image:"https://images-na.ssl-images-amazon.com/images/I/81l0Ek8x%2BAL._SY445_.jpg", summary:"The Sims in the past")

# Review.create(summary: "This game is the greatest game on Earth. I play this game 24/7. If I had more time, I would play it all the time. Don't @ me on that.", user_id: 21, game_id: 41)

