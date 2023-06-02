class Api::V0::ReviewsController < ApplicationController
  def index
    @reviews = Review.all
    render json: @reviews
  end

  ## Will work on the create action later this is our rough draft

  def create
    @review = Review.create(review_params)
    render json: @review
  end

  
  private

  def review_params
    params.permit(:user_id, :playground_id, :rating, :comment, :image)
  end
end
