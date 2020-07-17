class User < ApplicationRecord
    has_many: games, through: reviews
    has_many: games, through: user_game
    has_one: user_game

#Validations for Inputs
    validates :first_name, :last_name, :email, :username, :password, presence: true
    
    # validates :username, :password, uniqueness: true
end
