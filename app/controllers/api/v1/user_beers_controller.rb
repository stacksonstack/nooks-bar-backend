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
        @user_beer = UserBeer.create(user_beer_params)
        render json: @user_beer
    end

    def destroy
        @user_beer = UserBeer.find_by(user_id: params[:user_id], beer_id: params[:beer_id])
        @user_beer.destroy

        @user_beers = User.find(params[:user_id]).beers
        render json: @user_beers
    end

    private 

    def user_beer_params
        params.require(:user_beer).permit(:user_id, :beer_id)
    end
end
