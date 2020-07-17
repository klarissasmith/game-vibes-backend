class User < ApplicationRecord
    #Relationship with User, Game, and Review
    has_many :reviews
    has_many :games, through: :reviews
    
    
    #Relationship with User, Game, and UserGame
    has_one :user_game
    has_many :games, through: :user_games

#Validations for Inputs
    validates :first_name, :last_name, :email, :username, :password, presence: true
    
    # validates :username, :password, uniqueness: true
end
