class Api::V1::BeersController < ApplicationController

    def index
        @beers = Beer.all
        render json: @beers
    end


    def show
        @beer = Beer.find(params[:id])
        render json: @beer
    end

    def create
        @beer = Beer.new(beer_params)
        render json: @beer
    end

    private 

    def beer_params
        params.require(:beer).permit(:name, :tag_line, :description, :image_url, :food_pairing, :, :measurement, :ingredient)
    end

  
end
