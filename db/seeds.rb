
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
#FAKE USERS

5.times do
    User.create({
        first_name: Faker::Name.first_name,
        last_name: Faker::Name.last_name,
        email: Faker::Internet.email,
        username: Faker::Internet.username,
        password: Faker::Internet.password(max_length: 15)
    })
end
