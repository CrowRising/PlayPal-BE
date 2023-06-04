class Api::V0::ReviewsController < ApplicationController
  def index
    @reviews = Review.where(playground_id: params[:playground_id])
    render json: ReviewSerializer.new(@reviews)
  end

  def create
    @review = Review.create(review_params)
    render json: 'Suppers ready and the street lights just came on!'
  end

  private

    def review_params
      params.require(:reviews).permit(:user_id, :playground_id, :rating, :comment, :image)
    end
end
