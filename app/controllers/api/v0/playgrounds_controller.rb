class Api::V0::PlaygroundsController < ApplicationController
  def index
    render json: PlaygroundSerializer.new(PlaygroundsSearchFacade.new(params).playgrounds)
  end

  def show
    require 'pry'; binding.pry
    @playground = StaticImageFacade.new(params[:playground_id]).playground_image
    # render json: @playground
  end
end
