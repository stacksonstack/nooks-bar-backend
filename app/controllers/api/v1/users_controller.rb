class Api::V1::UsersController < ApplicationController
    def index
        @users = User.all
        render json: @users
    end


    def show
        @user = User.find(params[:id])
        render json: @user, serializer: UserSerializer
    end

    def create
        @user = User.new(user_params)
        render json: @user
    end

    private 

    def user_params
        params.require(:user).permit(:name, :email, :age, :password)
    end
end
