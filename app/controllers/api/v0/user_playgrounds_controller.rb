class Api::V0::UserPlaygroundsController < ApplicationController
    def index
        @user_playgrounds = UserPlayground.where(user_id: params[:user_id])
        render json: UserPlaygroundsSerializer.new(@user_playgrounds)
    end

    def create
        @user_playground = UserPlayground.create(user_playground_params)
    end

    private

    def user_playground_params
        params.require(:user_playgrounds).permit(:user_id, :playground_id, :playground_name)
    end
end
