class Api::V1::VillagersController < ApplicationController

    def index
        @villagers = Villager.all
        render json: @villagers
    end


    def show
        @villager = Villager.find(params[:id])
        render json: @villager
    end

    def create
        @villager = Villager.new(villager_params)
        render json: @villager
    end

    private 

    def villager_params
        params.require(:villager).permit(:name, :image_url)
    end
end
