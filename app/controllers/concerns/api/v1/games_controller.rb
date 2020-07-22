class Api::V1::GamesController < ApplicationController
    skip_before_action :authorized, only: [:create, :index]

    def index
        games = Game.all
        render json: games.to_json
    end

    def new
        game = Game.new
    end

    def create
        game = Game.create(game_params)
        render json: game.to_json
    end

    def destroy
        game = Game.find(params[:id])
        game.destroy
        render json: game.to_json
    end

    private

    def game_params
        params.require(:game).permit(:title, :image, :rating, :genre, :studio, :socials, :official_site, :summary, :consoles)
    end

end
