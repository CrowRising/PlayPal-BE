class Api::V0::PlaygroundsController < ApplicationController
  def index
    @playgrounds = Playground.all
    render json: @playgrounds
  end

  def show
    @playground = StaticImageFacade.new(params[:playground_id]).playground_image
    # render json: @playground
  end
end
