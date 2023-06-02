class Api::V0::UserPlaygroundsController < ApplicationController
    def index
        @user_playgrounds = UserPlayground.all
        render json: @user_playgrounds
    end

    def create
        @user_playground = UserPlayground.create(user_playground_params)
        render json: @user_playground
    end

    private

    def user_playground_params
        params.require(:user_playground).permit(:user_id, :playground_id, :playground_name)
    end
end
