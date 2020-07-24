class Game < ApplicationRecord
    #Relationship with User, Game, and Review
    has_many :reviews
    has_many :users, through: :reviews
    

    #Relationship with User, Game, and UserGame
    has_many :user_games
    has_many :users, through: :user_games
    
end
