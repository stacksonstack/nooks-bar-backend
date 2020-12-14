class Api::V1::UserBeersController < ApplicationController
    def index
        @user_beers = UserBeer.all
        render json: @user_beers
    end


    def show
        @user_beer = UserBeer.find(params[:id])
        render json: @user_beer
    end

    def create
        @user_beer = UserBeer.new(user_beer_params)
        render json: @user_beer
    end

    private 

    def user_beer_params
        params.require(:user_beer).permit(:user_id, :beer_id)
    end
end
